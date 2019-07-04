
Require Import Reals.
From mathcomp Require Import all_ssreflect.
Open Scope R_scope.

Section Painleve_II.
  Variables y y' y'' q p q' p' q'' b t : R.
  
  Lemma painleve_HII :
    y'' = 2*y^3 + t*y + b - 1/2 (* PII *)
    -> q = y -> q' = y' -> q'' = y'' (* q q' q'' の条件 *)
    -> p = q' + q^2 + t/2 -> p' = q'' + 2*q*q' + 1/2 (* p, p' の条件 *)
    -> q' = p - q^2 - t/2 /\ p' = 2 *q*p + b. (* 証明したいこと *)
  Proof.
    move=> PII Hq Hq' Hq'' Hp Hp'.
    have Hq'p : q' = p - q^2 - t/2.
    - rewrite Hp.
      field.
      split.
    - exact Hq'p.
    - rewrite -Hq -Hq'' in PII.
      rewrite Hp' PII Hq'p.
      field.
  Qed.


  (* s : HⅡ(b) -> HⅡ(-b) *)
  Definition s_q := q + b / p.
  Definition s_p := p.
  Definition s_q':= q'- b * p' / p^2.
  Definition s_p':= p'.
  
  Lemma backlund_s_q' :
    p <> 0 ->
    q' = p - q^2 - t/2 ->
    p' = 2*q*p + b ->
    s_q' = s_p - s_q^2 - t/2.
  Proof.
    move=> Hpnz Hq' Hp'.
    rewrite /s_q' /s_p /s_q.
    rewrite Hq' Hp'.
    field.
    exact Hpnz.
  Qed.

  Lemma backlund_s_p' :
    p <> 0 ->
    q' = p - q^2 - t/2 ->
    p' = 2*q*p + b ->
    s_p' = 2*s_q*s_p - b.
  Proof.
    move=> Hpnz Hq' Hp'.
    rewrite /s_p' /s_p /s_q.
    rewrite Hp'.
    field.
    exact Hpnz.
  Qed.

  (* HⅡ(1/2) -> HⅡ(-1/2) *)
  Lemma Rational_1_2 :
    t <> 0 -> b = 1/2 -> q = 0 -> p = t / 2 -> s_q = 1 / t.
  Proof.
    move=> Hnz Hb Hqt Hpt.
    rewrite /s_q.
    rewrite Hqt.
    rewrite Hpt.
    rewrite Hb.
    field.
    exact Hnz.
  Qed.


  (* r : HⅡ(b) -> HⅡ(1-b) *)
  Definition r_q := - q.
  Definition r_p := - p + 2*q^2 + t.
  
  Definition r_q' := - q'.
  Definition r_p' := - p' + 4*q*q' + 1.

  Lemma backlund_r_q' :
    q' = p - q^2 - t/2 ->
    p' = 2*q*p + b ->
    r_q' = r_p - r_q^2 - t / 2.
  Proof.
    move=> Hq' Hp'.
    rewrite /r_q' /r_p /r_q.
    rewrite Hq'.
    field.
  Qed.

  Lemma backlund_r_p' :
    q' = p - q^2 - t/2 ->
    p' = 2*q*p + b ->
    r_p' = 2*r_q*r_p + (1 - b).
  Proof.
    move=> Hq' Hp'.
    rewrite /r_p' /r_q /r_p.
    rewrite Hp' Hq'.
    field.
  Qed.

  (* 対称形式 *)
  Variables α1 α0 f1 f1' f0 f0' : R.
  Lemma painleve_SymII_f1 :
    q' = p - q^2 - t/2
    -> p' = 2*q*p + b
    -> α1 = b
    -> f1 = p
    -> f1' = p'
    -> f1' = 2*q*f1 + α1.
  Proof.
    move=> Hq' Hp' Ha Hp Hf1'.
    rewrite Hf1' Hp Ha Hp'.
    done.
  Qed.

  Lemma painleve_SymII_f0 :
    q' = p - q^2 - t/2
    -> p' = 2 *q*p + b
    -> α0 = 1 - b
    -> f0 = -p + 2*q^2 + t
    -> f0' = - p' + 4*q*q' + 1
    -> f0' = -2*q*f0 + α0.
  Proof.
  move=> Hq' Hp' Ha Hf0 Hf0'.
  rewrite Hf0' Hf0 Ha Hp' Hq'.
  field.
  Qed.

  Lemma painleve_SymII_q' :
    q' = p - q^2 - t/2
    -> p' = 2*q*p + b
    -> f1 = p
    -> f0 = -p+2*q^2+t
    -> q' = (f1 - f0)/2.
  Proof.
    move=> Hq' Hp' Hf1 Hf0.
    rewrite Hf1 Hf0 Hq'.
    field.
  Qed.

End Painleve_II.
