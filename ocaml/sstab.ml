(* Semi Standard Tableaux *)
let init_row n p = Array.make p (n+1)
let init_sstab p = Array.mapi init_row p

(* SSTab の (m,n) 番目セルに入っている値 *)
let cell s m n =
  try Some s.(m-1).(n-1)
  with _ -> None

(* (m,n)番目のセルの値を +1 できるかどうかを判定する *)
let can_incr_cell max p m n =
  match (cell p m n), (cell p m (n+1)), (cell p (m+1) n) with
  | Some c0, Some c1, Some c2 -> (c0 < max) && (c0 < c1) && ((c0 + 1) < c2)
  | Some c0, Some c1, None -> (c0 < max) && (c0 < c1)
  | Some c0, None, Some c2 -> (c0 < max) && ((c0 + 1) < c2)
  | Some c0, None, None -> c0 < max
  | _, _, _ -> false


let incr_cell max s m n =
  if can_incr_cell max s m n then  
    begin
      let n_row = Array.length s in
      let s' = Array.init n_row (fun i -> Array.copy s.(i)) in
      s'.(m-1).(n-1) <- s.(m-1).(n-1) + 1;
      Some s'
    end
  else None

(*
 * SageMath の sst では 最も外側のセルから増やしている
 * sst = SemistandardTableaux([2,2,1]); sst
 * sst.list()
 * でチェック!!
 *)
  
(*
 * 1. partition から最初の semistandard tableaux を作る.
 * 1. sstab の最下行の最右端で incr_cell を実施する.
 * 2. 1. が終わったら incr_cell の last element に対して
 *    最右端から 1 個左のセルに対して incr_cell を実施する.
 * 3. 最下行のセル全てに対して incr_cell を実施したら
 *    最下行から 1 つ上の行の最右端のセルに対して incr_cell を実施する.
 * 4. 3. が終わったら incr_cell の last element に対して
 *    最右端から 1 個左のセルに対して incr_cell を実施する.
 * ではやってみましょう!!
 *)

(* 順番 *)
let order s =
  Array.mapi (fun i x -> Array.mapi (fun j y -> (i+1,j+1)) x) s
  |> Array.fold_left Array.append [||]

(*
 * (i,j)番目のセルを max まで加算
 * Semi Standard Tableaux でなければ処理を中断
 *)
let incr_cell_list_at max i j stab =
  let rec create_incr_cell_list stabs =
    let sh = List.hd stabs in
    match incr_cell max sh i j with
    | Some s' -> create_incr_cell_list (s' :: stabs)
    | None -> stabs
  in

  create_incr_cell_list [stab]

let incr_cell_list max i j stabs =
  List.fold_left ( @ ) [] (List.map (incr_cell_list_at max i j) stabs)

let semi_standard_tableaux max p =
  let stab_0 = init_sstab p in
  let ords = order stab_0 in
  let rec create_sstabs stabs idx =
    let (i,j) = ords.(idx) in
    let stabs' = incr_cell_list max i j stabs in
    if idx = 0 then stabs'
    else create_sstabs stabs' (idx-1)
  in

  create_sstabs [stab_0] (Array.length ords - 1)
    
