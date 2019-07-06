(* 自然数の和 *)
From mathcomp Require Import all_ssreflect.

(* 数列 a_n の和 *)
Fixpoint sigma a n :=
  match n with
  | O => a O
  | S n' => a n + sigma a n'
  end.

(* s_n = a_0 + ... + a_n s_{n+1} = a_{n+1} + s_n *)
Lemma sigma_Sn : forall (a : nat -> nat) (n : nat),
    sigma a n.+1 = a n.+1 + sigma a n.
Proof.
  move=> a. (* 仮定を移動 *)
  case. (* n についての場合分け *)
  - done.
  - move=> n.
    done.
Qed.    

Check id. (* id : nat -> nat *)
Compute id 5.

Theorem sigma_n : forall n, 2 * sigma id n = n * (n + 1).
Proof.
  elim. (* n についての帰納法 *)
  - done.
  - move=> n IHn. (* 帰納法の仮定を移動 *)
    rewrite //=. (* sigma の計算を実行 *)
    (* 分配法則の確認 *)
    have Hdist : 2 * (n.+1 + sigma id n) = 2 * n.+1 + 2 * sigma id n. 
    + ring.
    (* 確認結果と帰納法で書き換え *)
    rewrite Hdist IHn.
    ring.
Qed.

Definition s2 n := n * (n+1).
(* 3 * Σ n(n+1) = n(n+1)(n+2) も同様に確認できる *)
Goal forall n,
    3 * sigma s2 n = n * (n + 1) * (n + 2).
Proof.
  elim.
  - done.
  - move=> n IHn. (* 帰納法の仮定を移動 *)
    rewrite //=.  (* sigma の計算を実行 *)
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