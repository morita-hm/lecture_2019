
Require Import Reals.
From mathcomp Require Import all_ssreflect.
Open Scope R_scope.

Section WarmingUp.
  Variables x y : R.

  Goal (x+2*y)*(x+2*y) = x*x + 4*x*y + 4*y*y.
  Proof.
    field.
  Qed.

  Goal (x+2*y)^2 = x^2 + 4*x*y + 4*y^2.
  Proof.
    field.
  Qed.
  
End WarmingUp.

Section Painleve_Rational.

  Variables q p q' p' b t : R.

  (* s : HⅡ(b) -> HⅡ(-b) *)
  Definition s_q := q + b / p.
  Definition s_p := p.

  (* HⅡ(1/2) -> HⅡ(-1/2) *)
  Goal t <> 0 -> b = 1/2 -> q = 0 -> p = t / 2 -> s_q = 1 / t.
  Proof.
    move=> Hnz Hb Hqt Hpt.
    rewrite /s_q.
    rewrite Hqt.
    rewrite Hpt.
    rewrite Hb.
    field.
    exact Hnz.
  Qed.

  Goal t <> 0 -> b = 1/2 -> q = 0 -> p = t / 2 -> s_p = t / 2.
  Proof.
    move=> Hnz Hb Hqt Hpt.
    rewrite /s_p.
    rewrite Hpt.
    field.
  Qed.


  (* r : HⅡ(b) -> HⅡ(1-b) *)
  Definition r_q := - q.
  Definition r_p := - p + 2*q^2 + t.

  (* HⅡ(-1/2) -> HⅡ(3/2) *)
  Goal t <> 0 -> b = -1/2 -> q = 1/t -> p = t / 2 -> r_q  = -1 / t.
  Proof.
    move=> Hnz Hb Hqt Hpt.
    rewrite /r_q.
    rewrite Hqt.
    field.
    exact Hnz.
  Qed.

  Goal t <> 0 -> b = -1/2 -> q = 1/t -> p = t / 2 -> r_p = (t^3+4)/(2*t^2).
  Proof.
    move=> Hnz Hb Hqt Hpt.
    rewrite /r_p.
    rewrite Hqt Hpt.
    field.
    exact Hnz.
  Qed.

  (* HⅡ(3/2) -> HⅡ(-3/2) *)
  Goal t <> 0 -> t^3 + 4 <> 0 -> b = 3/2 -> q = -1/t -> p = (t^3 + 4)/(2*t^2) -> s_q  = 2*(t^3 - 2)/(t*(t^3 + 4)).
  Proof.
    move=> Hnz1 Hnz2 Hb Hqt Hpt.
    rewrite /s_q.
    rewrite Hb Hqt Hpt.
    field.
    split.
    - exact Hnz2.
    - exact Hnz1.
  Qed.

  Goal t <> 0 -> b = 3/2 -> q = 1/t -> p = (t^3+4)/(2*t^2) -> s_p = (t^3+4)/(2*t^2).
  Proof.
    move=> Hnz Hb Hqt Hpt.
    rewrite /s_p.
    rewrite Hpt.
    field.
    exact Hnz.
  Qed.

  (* HⅡ(-3/2) -> HⅡ(5/2) *)
  Goal t <> 0 -> t^3 + 4 <> 0 -> b = -3/2 -> q = 2*(t^3 - 2)/(t*(t^3 + 4)) -> p = (t^3+4)/(2*t^2) -> r_q  = -2*(t^3 - 2)/(t*(t^3 + 4)).
  Proof.
    move=> Hnz1 Hnz2 Hb Hqt Hpt.
    rewrite /r_q.
    rewrite Hqt.
    field.
    split.
    - exact Hnz2.
    - exact Hnz1.
  Qed.

  Goal t <> 0 -> t^3 + 4 <> 0 -> b = -3/2 -> q = 2*(t^3 - 2)/(t*(t^3 + 4)) -> p = (t^3+4)/(2*t^2) -> r_p = t*(t^6 + 20*t^3 - 80) / (2*(t^3 + 4)^2).
  Proof.
    move=> Hnz1 Hnz2 Hb Hqt Hpt.
    rewrite /r_p.
    rewrite Hqt Hpt.
    field.
    split.
    - exact Hnz2.
    - exact Hnz1.
  Qed.

End Painleve_Rational.
