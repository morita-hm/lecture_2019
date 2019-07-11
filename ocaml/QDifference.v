Require Import Reals.
From mathcomp Require Import all_ssreflect.

Open Scope R_scope.

(* q 差分 :
 * f(x) - f(qx) / ((1-q)x)
 *)
Definition qdiff (q : R) (f : R->R) (x : R) :=
  f x - f (q*x) / ((1 - q) * x).

Fixpoint ntimes (x:R) (n:nat) :=
  match n with
  | n'.+1 => x * ntimes x n'
  | 0 => 1
  end.

Fixpoint nplus (n:nat) (x : R) :=
  match n with
  | n'.+1 => x + nplus n' x
  | 0 => 0
  end.

Lemma low_of_exponent : forall (n : nat) (q x : R),
    ntimes (q * x) n = (ntimes q n) * (ntimes x n).
Proof.
  move=> n q x.
  elim n.
  - rewrite //=.
    field. (* 1 = 1*1 でも done では証明できない *)
  - move=> n0 IHn0.
    rewrite //=.
    rewrite IHn0.
    field.
Qed.    

(* x^n - (qx)^n = (1 - q^n)*x^n *)
Lemma qdiff_monomial : forall (n : nat) (q x : R),
    ((ntimes x n) -  ntimes (q*x) n) = (1 - ntimes q n) * (ntimes x n).
Proof.
  move=> n q x.
  elim n.
  - rewrite //=.
    field.
  - move=> n0 IHn0.
    rewrite //=.
    rewrite low_of_exponent.
    field.
Qed.

