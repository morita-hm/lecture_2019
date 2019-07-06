
  
(* 座標 *)
type coord =
  | XYZ of float option * float option * float option

(* 主軸回転数 *)
type scode = int option
type tid = int option

(* Mコード *)
type mcode = int option
(* 送り速度  *)
type feed = int option

(* MコードとGコード *)
type t =
  | BEGINEND
  | O of int (* プログラム番号 *)
  | N of int (* シーケンス番号 *)
  | M of mcode * scode * tid
  | G of int list * coord * int option
  | ASSIGN of int * int
  | CMPGOTO of int * int * int
  | EMPTY (* 空行 *)
