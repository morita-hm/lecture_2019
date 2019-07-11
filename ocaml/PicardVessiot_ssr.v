(* Differential Ring and Differential Field *)
Require Import Ring.
From mathcomp Require Import all_ssreflect.

(*
 * 微分体
 * differential ring : K
 *)
Parameter (K : Type)
          (zero_k unit_k : K)
          (add_k sub_k mul_k : K -> K -> K)
          (opp_k : K -> K)
          (diff_k : K -> K).

Parameter ring_theory_k : ring_theory zero_k unit_k add_k mul_k sub_k opp_k (@eq K).
Add Ring RingTheory_R : ring_theory_k.

Notation "0" := zero_k.
Notation "1" := unit_k.

Notation "p + q" := (add_k p q).
Notation "p - q" := (sub_k p q).
Notation "p * q" := (mul_k p q).
Notation "- p" := (opp_k p).
Notation "∂ p" := (diff_k p) (at level 10).

(* ∂ の性質 : 加法性, Leibnitz rule *)
Axiom diff_add : forall (p q : K), ∂ (p + q) = (∂ p) + (∂ q).
Axiom leibnitz : forall (p q : K), ∂ (p * q) = (∂ p) * q + p * (∂ q).

(* 結合法則, 交換法則 *)
Lemma add_k_assoc : forall (p q r : K), p + q + r = p + (q + r).
Proof. move=> p q r. ring. Qed.

Lemma add_k_comm : forall (p q : K), p + q = q + p.
Proof. move=> p q. ring. Qed.

(* 重要な2項演算 *)
Lemma add_k_zero_right : forall (p : K), p + 0 = p.
Proof. move=> p. ring. Qed.

Lemma add_k_zero_left : forall (p : K), 0 + p = p.
Proof. move=> p. ring. Qed.

Lemma same_sub_k : forall (p : K), p - p = 0.
Proof. move=> p. ring. Qed.

Lemma add_k_sub_k_assoc : forall (p q r : K), p + q - r = p + (q - r).
Proof. move=> p q r. ring. Qed.

Lemma mul_k_assoc : forall (p q r : K), p * q * r = p * (q * r).
Proof. move=> p q r. ring. Qed.

Lemma mul_k_comm : forall (p q : K), p * q = q * p.
Proof. move=> p q. ring. Qed.

Lemma mul_k_unit_left : forall (p : K), 1 * p = p.
Proof. move=> p. ring. Qed.

Lemma mul_k_unit_right : forall (p : K), p * 1 = p.
Proof. move=> p. ring. Qed.

Lemma mul_k_zero_right : forall (p : K), p * 0 = 0.
Proof. move=> p. ring. Qed.

Lemma mul_k_zero_left : forall (p : K), 0 * p = 0.
Proof. move=> p. ring. Qed.

(* 等式の変形 *)
Lemma opp_add_k : forall (p q : K), p + q = 0 -> q = - p.
Proof.
  move=> p q Hpq.
  rewrite add_k_comm in Hpq.
  have Hpq' : ((q + p) + (-p) = -p).
  - rewrite Hpq.
    ring.
  rewrite <- Hpq'.
  ring.
Qed.

Lemma eqn_proper_add_k : forall (p q r : K), p = q -> p + r = q + r.
Proof.
  move=> p q r Hpq.
  rewrite Hpq.
  done.
Qed.

Lemma eqn_proper_sub_k : forall (p q r : K), p = q -> p - r = q - r.
Proof.
  move=> p q r Hpq.
  rewrite Hpq.
  done.
Qed.

Lemma eqn_proper_mul_k : forall (p q r : K), p = q -> p * r = q * r.
Proof.
  move=> p1 p2 q H12.
  rewrite H12.
  done.
Qed.

(* 1 の微分 *)
Lemma diff_one : ∂ 1 = 0.
Proof.
  have Hd1 : (∂ (1*1) = (∂ 1)*1 + 1*(∂ 1)).
  apply /leibnitz.
  repeat rewrite mul_k_unit_right in Hd1.
  rewrite mul_k_unit_left in Hd1.
  have Hd1' : ((∂ 1) - (∂ 1) = (∂ 1) + (∂ 1) - (∂ 1)).
  - rewrite -Hd1.
    done.
  rewrite add_k_sub_k_assoc in Hd1'.
  repeat rewrite same_sub_k in Hd1'.
  rewrite add_k_zero_right in Hd1'.
  rewrite -Hd1'.
  done.
Qed.

(* 0 の微分 *)
Lemma diff_zero : ∂ 0 = 0.
Proof.
  have Hz_2 : (0 + 0 = 0).
  - ring.
  have Hz : (∂ (0+0) = ∂ 0).
  - rewrite Hz_2.
    done.
  have Hz' : (∂ (0+0) = ∂ 0 + ∂ 0).
  - rewrite diff_add.
    done.
  rewrite Hz' in Hz.
  have Hz'' : (∂ 0 + ∂ 0 - ∂ 0 = ∂ 0).
  - ring.
  rewrite Hz in Hz''.
  rewrite -Hz''.
  ring.
Qed.

Lemma diff_opp : forall (p : K), ∂ (- p) = - ∂ p.
Proof.
  move=> p.
  have Hz : (-p + p = 0).
  - ring.
  have Hdz : (∂ (-p + p) = 0).
  - rewrite Hz.
    exact diff_zero.
  rewrite diff_add in Hdz.
  have Hdz' : (∂ (- p) + ∂ p - ∂ p = - ∂ p).
  - rewrite Hdz.
    ring.
  rewrite -Hdz'.
  ring.
Qed.

Lemma diff_inv : forall (p _p : K),
    p * _p = 1 -> ∂ _p = - (_p * _p) * (∂ p).
Proof.
  move=> p _p Hinv.
  have Hd1 : (∂ (p * _p) = 0).
  - rewrite Hinv diff_one.
    done.
  rewrite leibnitz in Hd1.
  have Hd1' : ((∂ p * _p + p * ∂ _p) - ∂ p * _p = - ∂ p * _p).
  - rewrite Hd1.
    ring.
  have Hd1'' : (∂ p * _p + p * ∂ _p - ∂ p * _p = p * ∂ _p).
  - ring.
  rewrite Hd1'' in Hd1'.
  have Hd1''' : _p * (p * ∂ _p) = _p * (- ∂ p * _p).
  - rewrite Hd1'.
    ring.
  have Hinv_lhs : (_p * (p * ∂ _p) = _p * p * ∂ _p).
  - ring.
  have Hinv_rhs : (_p * (- ∂ p * _p) = - (_p * _p) * ∂ p).
  - ring.
  rewrite Hinv_lhs Hinv_rhs in Hd1'''.
  have Hinv' : (_p * p = 1).
  - rewrite <- Hinv.
    ring.
  have Hinv'' : _p * p * ∂ _p = ∂ _p.
  - rewrite Hinv'.
    ring.
  rewrite Hinv'' in Hd1'''.
  exact Hd1'''.  
Qed.

Lemma diff_ratio : forall (y1 _y1 y2 _y2 : K),
    y1 * _y1 = 1 -> ∂ (_y1 * y2) = - (_y1 * _y1) * ∂ y1 * y2 + _y1 * ∂ y2.
Proof.
  move=> y1 _y1 y2 _y2 Hinv.
  rewrite leibnitz.
  have H1 : ∂ _y1 = - (_y1 * _y1) * ∂ y1.
  - apply diff_inv.
    exact Hinv.
  rewrite H1.
  done.
Qed.

Theorem PV_Gm : forall (y1 _y1 y2 _y2 a : K),
    y1 * _y1 = 1 ->
    ∂ y1 = a * y1 ->
    y2 * _y2 = 1 ->
    ∂ y2 = a * y2 ->
    ∂ (_y2 * y1) = 0.
Proof.
  move=> y1 _y1 y2 _y2 a H1_inv H1_eq H2_inv H2_eq.
  rewrite leibnitz.
  have Hdy2 : ∂ _y2 = - (_y2 * _y2) * ∂ y2.
  - apply /diff_inv.
    exact H2_inv.
    rewrite Hdy2 H2_eq H1_eq.
  have H : - (_y2 * _y2) * (a * y2) = - _y2 * _y2 * y2 * a.
  - ring.
  have H2_inv' : _y2 * y2 = 1.
  - rewrite -H2_inv.
    ring.
  have H' : - _y2 * (_y2 * y2) = - _y2.
  - rewrite H2_inv'.
    ring.
  have H'' : - _y2 * _y2 * y2 = - _y2 * (_y2 * y2).
  - ring.
  rewrite -H'' in H'.
  have H''' : - (_y2 * _y2) * (a * y2) = - _y2 * _y2 * y2 * a.    
  - ring.
  rewrite H' in H'''.
  rewrite H'''.
  ring.
Qed.

(*
 * x の n 倍
 * n x = x + ... + x
 *)
Fixpoint nadd (x : K) (n : nat) :=
  match n with
  | O => 0
  | n'.+1 => x + nadd x n'
  end.

(* x の n 倍を n # x と書く *)
Notation "n # x" := (nadd x n) (at level 40).
Lemma comm_nadd : forall (x y : K) (n : nat),
    x * (n # y) = n # (x * y).
Proof.
  move=> x y n.
  elim: n => [|n0 IHn0] //=.
  - ring.
  - rewrite <-IHn0.
    ring.
Qed.

(* K = C(x) としたときの微分 *)
(* x の n 乗 *)
Fixpoint nmul (x : K) (n : nat) :=
  match n with
  | O => 1
  | n'.+1 => x * nmul x n'
  end.

(* x の n 乗を x ** n と書く *)
Notation "x ** n" := (nmul x n) (at level 20).

(* ∂ x = 1 のときの x の n 乗の微分 *)
Lemma diff_x : forall (x : K) (n : nat),
    ∂ x = 1 -> ∂ (x ** (n.+1)) = (n.+1) # (x ** n).
Proof.
  intros x n Hd.
  elim: n => [|n0 IHn0] //=.
  - rewrite mul_k_unit_right add_k_zero_right.
    exact Hd.
  - rewrite //= in IHn0.
    rewrite leibnitz IHn0 Hd mul_k_unit_left.
    rewrite -comm_nadd.
    ring.
Qed.

