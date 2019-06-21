
(* Two Partitions
 x + y = n, x = n-1, n-2, ...; y = 1, 2, ...
 [n-1; 1], [n-2; 2], ..., [n-k; k] (n-k >= k)
 *)
let rec two_partitions n i =
  if n-i >= i then [n-i;i] :: two_partitions n (i+1) else []

let append_each l x =
  List.map (fun y -> y @ [x]) l

(*
 * 3個以下のパーティションに分割する.
 *)
let rec three_partitions n j =
  if n-j >=j then
    let p = append_each (two_partitions (n-j) j) j in
    p @ (three_partitions n (j+1))
  else []

(*
 * 4 個以下のパーテションに分割する.
 *)
let rec four_partitions n j =
  if n-j >= j then
    let p = append_each (three_partitions (n-j) j) j in
    p @ (four_partitions n (j+1))
  else []

let rec five_partitions n j =
  if n-j >= j then
    let p = append_each (four_partitions (n-j) j) j in
    p @ (five_partitions n (j+1))
  else []  

(* m 個以下のパーテションに分割する *)
let rec n_partitions m n j =
  if m = 1 then [[n]]
  else if m = 2 then two_partitions n j
  else if n-j >= j then
    let p = append_each (n_partitions (m-1) (n-j) j) j in
    p @ (n_partitions m n (j+1))
  else []

(*
 * パーティションのリストを作成する.
 *)
let partitions_list n =
  let rec find_partitions n lst deg =
    if deg > n then lst
    else
      let n_ps = n_partitions deg n 1 in
      let lst_cur = List.append lst n_ps in
      find_partitions n lst_cur (deg+1)
  in

  find_partitions n [] 1 

(*
 * n の分割
 *)
let partitions n =
  let p = partitions_list n in
  List.map Array.of_list p
