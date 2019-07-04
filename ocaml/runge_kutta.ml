(*
 * mx'' + cx' + kx = 0 をルンゲクッタ法で数値計算
 * コンパイルはターミナルから
 * ocamlopt -o runge_kutta runge_kutta.ml
 * 実行はターミナルから
 * ./runge_kutta > ret.log
 * この結果 ret.log を gnuplot などで見る
 *)
let m = 10.0
let c = 10.0
let k = 1000.0
let f t (x,v) =
  (v, -. (c /. m) *. v -. (k /. m)*. x)  

(* (x,v) のベクトルの演算 *)
let ( +! ) (x1,v1) (x2,v2) = (x1 +. x2, v1 +. v2)
let ( -! ) (x1,v1) (x2,v2) = (x1 -. x2, v1 -. v2)
let ( *! ) c (x,v) = ( c *. x, c *. v )

(* 次のステップの値を近似計算 *)
let runge_kutta_core f (x_pre, v_pre) h n =
  let t = (float_of_int n) *. h in
  let k1 = f t (x_pre, v_pre) in
  let k2 = f (t +. 0.5 *. h) ((x_pre, v_pre) +! ((0.5 *.h) *! k1)) in
  let k3 = f (t +. 0.5 *. h) ((x_pre, v_pre) +! ((0.5 *.h) *! k2)) in
  let k4 = f (t +. h) ((x_pre, v_pre) +! (h *! k3)) in
  (x_pre, v_pre) +! ((h /. 6.) *! (k1 +! (2. *! k2) +! (2. *! k3) +! k4))

let runge_kutta_result f (x0,v0) h n =
  let rec dump_runge_kutta_loop f (x_pre, v_pre) h idx =
    let (x_cur, v_cur) = runge_kutta_core f (x_pre, v_pre) h idx in
    let idx_next = idx + 1 in
    Printf.printf "%f\n" x_cur;
    if idx_next >= n then () else dump_runge_kutta_loop f (x_cur, v_cur) h idx_next
  in
  
  Printf.printf "%f\n" x0;
  dump_runge_kutta_loop f (x0,v0) h 0

(* エントリポイント *)
let () =
  let h = 1. /. 5000. in
  runge_kutta_result f (1.0, 0.0) h 20000
