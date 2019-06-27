
(* Young 図形からマヤ図形を作成する *)
let generate_of_young m p =
  let rec rev_maya m' p' =
    match p' with
    | l :: ls -> (l+m') :: rev_maya (m'-1) ls
    | [] -> []
  in

  List.rev (rev_maya m p)

(* 同じ処理を高階関数 mapi で実装 *)
let map_of_young m p =
  List.mapi (fun i l -> l + m - i) p 
