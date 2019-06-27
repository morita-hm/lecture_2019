(* 自然数の和 *)
From mathcomp Require Import all_ssreflect.

Fixpoint sigma a n :=
  match n with
  | O => a O
  | S n' => a n + sigma a n'
  end.

Lemma sigma_Sn : forall (a : nat -> nat) (n : nat),
    sigma a n.+1 = a n.+1 + sigma a n.
Proof.
  move=> a.
  case.
  - done.
  - move=> n.
    done.
Qed.    

Check id.

Theorem sigma_n : forall n, 2 * sigma id n = n * (n + 1).
Proof.
  elim.
  - done.
  - move=> n IHn.
    rewrite //=.
    have Hdist : 2 * (n.+1 + sigma id n) = 2 * n.+1 + 2 * sigma id n.
    + ring.
    rewrite Hdist IHn.
    ring.
Qed.

Definition s2 n := n * (n+1).
Goal forall n,
    3 * sigma s2 n = n * (n + 1) * (n + 2).
Proof.
  elim.
  - done.
  - move=> n IHn.
    rewrite //=.
    have Hdist : 3 * (s2 n.+1 + sigma s2 n) = 3 * s2 n.+1 + 3 * sigma s2 n.
    + ring.
    rewrite Hdist IHn /s2.
    ring.
Qed.

(* pochhammer n k = n (n+1) ... (n+k-1) *)
Fixpoint pochhammer n k :=
  match k with
  | k'.+1 => (n + k') * pochhammer n k'
  | 0 => 1
  end.

Compute pochhammer 2 3.

Goal forall (n : nat), pochhammer n 1 = n.
Proof.
  move=> n.
  rewrite //=.
  ring.
Qed.

Goal forall (n : nat), pochhammer n 2 = n * (n+1).
Proof.
  move=> n.
  rewrite //=.
  ring.
Qed.

Lemma pochhammer_difference_3 : forall (n : nat),
    pochhammer n.+1 3 = pochhammer n 3 + 3 * pochhammer n.+1 2.
Proof.
  move=> n.
  rewrite //=.
  ring.
Qed.

Lemma pochhammer_difference_4 : forall (n : nat),
    pochhammer n.+1 4 = pochhammer n 4 + 4 * pochhammer n.+1 3.
Proof.
  move=> n.
  rewrite //=.
  ring.
Qed.

Require Import Extraction.
Extract Inductive nat => int ["0" "succ"] "(fun fO fS n -> if n = 0 then fO () else fS (n-1))".
Extraction "pochhammer_ssr.ml" pochhammer.