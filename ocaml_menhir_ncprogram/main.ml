(* File main.ml *)

open Printf
open Nccode

(* MCode のトレース *)
let trace_mcode s =
  match s with
  | M (cmd, tid, srpm) ->
      begin
	let srpm_str =
	  match srpm with
	  | None -> ""
	  | Some s' -> (",回転数=" ^ (string_of_int s') ^ "rpm")
	in
	let tid_str =
	  match tid with
	  | None -> ""
	  | Some t' -> (",ツールID=" ^ (string_of_int t'))
	in
	if cmd = Some 3 then (* 正転 *)
	  ("正転開始" ^ srpm_str ^ tid_str)
	else if cmd = Some 4 then (* 逆転 *)
	  ("逆転開始" ^ srpm_str ^ tid_str)
	else if cmd = Some 6 then (* ATC *)
	  ("ATC" ^ tid_str)
	else if cmd = Some 5 then
	  "回転停止"
	else if cmd = Some 8 then
	  "クーラント開始"
	else if cmd = Some 9 then
	  "クーラント停止"
	else ""
      end
  | _ -> ""

(* GCode のトレース
 00 : 早送り
 01 : 切削(直線補完)
 54 - 59 : 座標
 *)
let trace_gcode s =
  let rec find_gcode id ids =
    match ids with
    | x :: xs -> if x = id then true else find_gcode id xs
    | [] -> false
  in
  
  match s with
  | G (ids,xyz,feed) ->
      begin
	let gcode_str =
	  if find_gcode 0 ids then "早送り"
	  else if find_gcode 1 ids then "切削(直線補完)"
	  else "↓"
	in
	let xyz_str =
	  match xyz with
	  | XYZ (Some x', Some y', Some z') -> ("x=" ^ (string_of_float x') ^ "y=" ^ (string_of_float y') ^ "z=" ^ (string_of_float z'))
	  | XYZ (Some x', Some y', None) -> ("x=" ^ (string_of_float x') ^ "y=" ^ (string_of_float y'))
	  | XYZ (Some x', None, Some z') -> ("x=" ^ (string_of_float x') ^ "z=" ^ (string_of_float z'))
	  | XYZ (None, Some y', Some z') -> ("y=" ^ (string_of_float y') ^ "z=" ^ (string_of_float z'))
	  | XYZ (Some x', None, None) -> ("x=" ^ (string_of_float x'))
	  | XYZ (None, Some y', None) -> ("y=" ^ (string_of_float y'))
	  | XYZ (None, None, Some z') -> ("z=" ^ (string_of_float z'))
	  | XYZ (None, None, None) -> ""
	in
	let feed_str =
	  match feed with
	  | Some f -> (",送り速度=" ^ (string_of_int f))
	  | None -> ""
	in
	gcode_str ^ xyz_str ^ feed_str
      end
  | _ -> ""

let trace s =
  match s with
  | BEGINEND -> Printf.printf "データスタート / データエンド\n"
  | O id -> Printf.printf "プログラム番号 = %d\n" id
  | N id -> Printf.printf "シーケンス番号 = %d\n" id
  | G (_,_,_) -> Printf.printf "%s\n" (trace_gcode s)
  | M (_,_,_) -> Printf.printf "%s\n" (trace_mcode s)
  | ASSIGN (n,v) -> Printf.printf "変数 #%d に %d を代入\n" n v
  | CMPGOTO (n,v,k) -> Printf.printf "変数 #%d が %d ならば シーケンス番号 %d にジャンプ\n" n v k
  | EMPTY -> ()

let () =
  try
    let lexbuf = Lexing.from_channel stdin in (* 標準入力から読み取り *)
    while true do
      let result = Parser.main Lexer.token lexbuf in (* 字句解析, 構文解析結果を出力 *)
      List.iter trace result
    done
  with _ -> exit 0
      
