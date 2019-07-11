
Require Import Reals.
From mathcomp Require Import ssreflect.
Open Scope R_scope.

(* Coq による Painleve IV の検証
 * 野海先生の「パンルヴェ方程式 - 対称性からの入門 - (朝倉書店)」から引用
 *)
Section Painleve_IV.

(* 使用する変数 *)
Variables α0 α1 α2 f0 f1 f2 f0' f1' f2' f1'' y y' y'' t : R.

(* 対称形式から f0' + f1' + f2' = 1 *)
Lemma Painleve_IV_total :
  f0' = f0 * (f1 - f2) + α0 ->
  f1' = f1 * (f2 - f0) + α1 ->
  f2' = f2 * (f0 - f1) + α2 ->
  α0 + α1 + α2 = 1 -> (* ここまで条件 *)
  f0' + f1' + f2' = 1. (* 証明したいこと *)
Proof. (* 式変形での証明 *)
  move=> Hf0' Hf1' Hf2' Ha.
  rewrite Hf0' Hf1' Hf2'.
  rewrite -Ha.
  field.
Qed.

(* 2.6 式 f1' = f1(f2 - f0) + α1 で f0 を消去して得た結果 *)
Lemma Painleve_IV_ex_f1' :
  f1' = f1 * (f2 - f0) + α1 ->
  f0 + f1 + f2 = t -> (* f0 を消去する式 *)
  f1' = f1*(f1+2*f2-t)+α1. (* 証明したいこと *)
Proof. (* 式変形での証明 *)
  move=> Hf1' Hf.
  have Hf0 : f0 = t - f1 - f2.
  - rewrite -Hf.
    field.
  - rewrite Hf0 in Hf1'.
    have H : f2 - (t - f1 - f2) = f1 + 2*f2 - t.
    + field.
    + rewrite H in Hf1'.
  exact Hf1'.
Qed.

(* 2.6 式を f2 について解いた結果 *)
Lemma Painleve_IV_f2 :
  f1 <> 0 ->
  f1' = f1*(f1+2*f2-t)+α1 -> (* 変形前の式 *)
  f2 = (f1'-α1)/(2*f1) + (t - f1)/2. (* 証明したいこと *)
Proof.
  move=> Hnz Hf1'.
  rewrite Hf1'.
  field.
  exact Hnz.
Qed.

(* 2.6 式 : f2' = f2(f0 - f1) + α2 で f0 を消去して得た結果 *)
Lemma Painleve_IV_ex_f2' :
  f2' = f2 * (f0 - f1) + α2 ->
  f0 + f1 + f2 = t -> (* f0 を消去する式 *)
  f2' = f2*(t-2*f1-f2)+α2. (* 証明したいこと *)
Proof.
  move=> Hf2' Hf.
  have Hf0 : f0 = t - f1 - f2.
  - rewrite -Hf.
    field.
  - rewrite Hf0 in Hf2'.
    have H : t - f1 - f2 - f1 = t - 2*f1 - f2.
    + field.
    + rewrite H in Hf2'.
  exact Hf2'.
Qed.

(* f2' について解いた結果 *)
Lemma Painleve_IV_f2' :
  f1 <> 0 ->
  f2 = (f1'-α1)/(2*f1) + (t - f1)/2 -> (* f2 について解いた結果 *)
  f2' = f2*(t-2*f1-f2)+α2 -> (* 2.6 式 : これに f2 について解いた結果を代入 *)
  f2' = (t^2 - 4*t*f1 - 2*(f1'-α1) + 3*f1^2)/4 - (f1'-α1)^2/(4*f1^2) + α2. (* 証明したいこと *)
Proof.
  move=> Hnz Hf2 Hex_f2'.
  rewrite Hex_f2' Hf2.
  field.
  exact Hnz.
Qed.

(*
 * 対称形式から 2.7 式
 *        (y')^2   3y^3            t^2                      α1^2
 * y'' =  ------ + ---- - 2ty^2 + (---- + α1 + 2α2 - 1 )y - -----
 *         2y       2              2                        2y
 * 得る
 *)
Lemma Painleve_IV :
  f1 <> 0 ->
  f2 = (f1'-α1)/(2*f1) + (t - f1)/2 ->
  f2' = (t^2 - 4*t*f1 - 2*(f1'-α1) + 3*f1^2)/4 - (f1'-α1)^2/(4*f1^2) + α2 ->
  f1'' = f1'*(f1+2*f2-t) + f1*(f1'+2*f2'-1) ->
  y = f1 ->
  y' = f1' ->
  y'' = f1'' -> (* ここまで条件 *)
  y'' = y'^2 / (2*y) + 3*y^3 / 2 - 2*t*y^2 + (t^2/2 + α1+2*α2-1)*y - α1^2/(2*y). (* 証明したいこと *)
Proof.
  move=> Hnz Hf2 Hf2' Hf1'' Hy Hy' Hy''.
  rewrite Hy Hy' Hy'' Hf1'' Hf2 Hf2'.
  field.
  exact Hnz.
Qed.

End Painleve_IV.