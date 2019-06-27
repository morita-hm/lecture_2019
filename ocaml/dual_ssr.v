
From mathcomp Require Import ssreflect.

(*
 dual vector
 vecteur dual
 双対ベクトル
  
 *)

Section F_dual.

  Parameter F : Type.
  Parameter add mul : F -> F -> F.
  Axiom add_commutative : forall (x y : F), add x y = add y x.
  
  (* ベクトルの足し算 *)
  Definition add_v (u v : F*F) : F*F :=
    let (u1, u2) := u in
    let (v1, v2) := v in
    (add u1 v1, add u2 v2).

  (* 
   * 双対ベクトルの"足し算"
   * f : F*F->F
   * g : F*F->F
   * に対して add_f (+.) f g を f と g の和とする
   *)
  Definition add_f (f g : F*F -> F) (u : F*F) : F := add (f u) (g u).
  
  (* Dual vector の和 *)
  Lemma add_dual_linear : forall (u v : F*F) (f g : F*F->F),
                            f (add_v u v) = add (f u) (f v) ->
                            g (add_v u v) = add (g u) (g v) ->
                            add (add (f u) (f v)) (add (g u) (g v)) = add (add (f u) (g u)) (add (f v) (g v)) ->
                            (add_f f g) (add_v u v) = add ((add_f f g) u) ((add_f f g) v).
  Proof.
    move=> u v f g Hf Hg Hfg. (* 仮定を移動 *)
    rewrite /add_f.           (* add_f の定義を展開 *)
    rewrite Hf.               (* 各仮定を使って書き換え *)
    rewrite Hg.
    rewrite Hfg.
    done.                     (* 左辺 = 右辺で証明完 *)
  Qed.

  (* Dual Vector の和が交換可能であること *)
  Lemma add_dual_commutative : forall (u : F*F) (f g : F*F->F),
      add_f f g u = add_f g f u.
  Proof.
    move=> u f g.
    rewrite /add_f.
    rewrite add_commutative.
    done.
  Qed.
  
  (* ベクトルのスカラー倍 *)
  Definition mul_v (c : F) (u : F*F) : F*F :=
    let (u1, u2) := u in
    (mul c u1, mul c u2).

  Definition mul_f (c : F) (f : F*F -> F) (u : F*F) : F := mul c (f u).
  
  Print mul_v.

  (* Dual vector のスカラー倍 *)
  Lemma mul_dual_linear : forall (c0 c1 : F) (u : F*F) (f : F*F->F),
                            f (mul_v c1 u) = mul c1 (f u) ->
                            mul c0 (mul c1 (f u)) = mul (mul c0 c1) (f u) ->
                            (mul_f c0 f) (mul_v c1 u) = mul (mul c0 c1) (f u). 
  Proof.
    move=> c0 c1 u f Hv Hc.
    rewrite /mul_f.
    rewrite Hv.
    rewrite Hc.
    done.
  Qed.

End F_dual.

Require Import Extraction.
Extraction "dual_ssr.ml" add_v add_f mul_v mul_f.