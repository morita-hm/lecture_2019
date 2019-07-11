Require Import Reals.
From mathcomp Require Import all_ssreflect.
Open Scope R_scope.

Section QuantumGrassmannian.

Variable A : Set.
Variables zero unit : A.
Variables q _q : R.
Variables o l x13 x14 x23 x24 ξ12 _ξ12 : A.
Variables add mult : A -> A -> A.
Variable minus : A -> A.
Variable rmult : R -> A -> A.

Fixpoint pow (u : A) (n : nat) :=
  match n with
  | n'.+1 => mult u (pow u n')
  | O => unit
  end.


Notation "u <+> v" := (add u v) (at level 50, left associativity).
Notation "u <*> v" := (mult u v) (at level 40, left associativity).
Notation "u <^> n" := (pow u n) (at level 30, right associativity).
Notation "r *< u" := (rmult r u) (at level 40, left associativity).

Axiom add_comm : forall (u v : A), u <+> v = v <+> u.
Axiom zero_add_left : forall (u : A), o <+> u = u.
Axiom zero_add_right : forall (u : A), u <+> o = u.
Axiom mult_assoc : forall (u v w : A), u <*> v <*> w = u <*> (v <*> w).

Axiom x13_x14_comm : x13 <*> x14 = q *< x14 <*> x13.
Axiom x23_x24_comm : x23 <*> x24 = q *< x24 <*> x23.
Axiom unit_mult_left : forall (u : A), l <*> u = u.
Axiom unit_mult_right : forall (u : A), u <*> l = u.
Axiom zero_mult_left : forall (u : A), o <*> u = o.
Axiom zero_mult_right : forall (u : A), u <*> o = o.

Axiom rmult_amult : forall (r : R) (u v : A), r *< u <*> v = r *< (u <*> v).

Variables K3 _K3 K4 _K4 E3 F3 : A -> A.

Axiom one_rmult : forall (u : A), 1 *< u = u.
Axiom zero_rmult : forall (u : A), 0 *< u = o. 
Axiom minus_rmult : forall (u : A), (-1 *< u) <+> u = o.

Axiom K3_x13 : K3 x13 = q *< x13.
Axiom K3_x23 : K3 x23 = q *< x23.
Axiom K3_x14 : K3 x14 = x14.
Axiom K3_x24 : K3 x24 = x24.
Axiom K3_xi12 : K3 ξ12 = ξ12.

Axiom K3_linear_add : forall (u v : A), K3 (u <+> v) = K3 u <+> K3 v.
Axiom K3_linear_rmult : forall (r : R) (u : A), K3 (r *< u) = r *< K3 u.
Axiom K3_leibnitz : forall (u v : A), K3 (u <*> v) = K3 u <*> K3 v.

Axiom _K3_x13 : _K3 x13 = (1/q) *< x13.
Axiom _K3_x23 : _K3 x23 = (1/q) *< x23.
Axiom _K3_x14 : _K3 x14 = x14.
Axiom _K3_x24 : _K3 x24 = x24.
Axiom _K3_xi12 : _K3 ξ12 = ξ12.

Axiom _K3_linear_add : forall (u v : A), _K3 (u <+> v) = _K3 u <+> _K3 v.
Axiom _K3_linear_rmult : forall (r : R) (u : A), _K3 (r *< u) = r *< _K3 u.
Axiom _K3_leibnitz : forall (u v : A), _K3 (u <*> v) = _K3 u <*> _K3 v.

Axiom K4_x13 : K4 x13 = x13.
Axiom K4_x23 : K4 x23 = x23.
Axiom K4_x14 : K4 x14 = q *< x14.
Axiom K4_x24 : K4 x24 = q *< x24.
Axiom K4_xi12 : K4 ξ12 = ξ12.

Axiom K4_linear_add : forall (u v : A), K4 (u <+> v) = K4 u <+> K4 v.
Axiom K4_linear_rmult : forall (r : R) (u : A), K4 (r *< u) = r *< K4 u.
Axiom K4_leibnitz : forall (u v : A), K4 (u <*> v) = K4 u <*> K4 v.

Axiom _K4_x13 : _K4 x13 = x13.
Axiom _K4_x23 : _K4 x23 = x23.
Axiom _K4_x14 : _K4 x14 = (1/q) *< x14.
Axiom _K4_x24 : _K4 x24 = (1/q) *< x24.
Axiom _K4_xi12 : _K4 ξ12 = ξ12.

Axiom _K4_linear_add : forall (u v : A), _K4 (u <+> v) = _K3 u <+> _K3 v.
Axiom _K4_linear_rmult : forall (r : R) (u : A), K4 (r *< u) = r *< K4 u.
Axiom _K4_leibnitz : forall (u v : A), _K4 (u <*> v) = _K4 u <*> _K4 v.

Axiom E3_x13 : E3 x13 = o.
Axiom E3_x14 : E3 x14 = (q - (1/q)) *< x13.
Axiom E3_x23 : E3 x23 = o.
Axiom E3_x24 : E3 x24 = (q - (1/q)) *< x23.
Axiom E3_xi12 : E3 ξ12 = o.
Axiom E3__xi12 : E3 _ξ12 = o.

Axiom E3_linear_add : forall (u v : A), E3 (u <+> v) = (E3 u) <+> (E3 v).
Axiom E3_linear_rmult : forall (r : R) (u : A), E3 (r *< u) = r *< E3 u.
Axiom E3_leibnitz : forall (u v : A), E3 (u <*> v) = E3 u<*>v <+> K3 (_K4 u) <*> (E3 v).

Axiom F3_x13 : F3 x13 = o.
Axiom F3_x14 : F3 x14 = (q - (1/q)) *< x13.
Axiom F3_x23 : F3 x23 = o.
Axiom F3_x24 : F3 x24 = (q - (1/q)) *< x23.
Axiom F3_xi12 : F3 ξ12 = o.
Axiom F3__xi12 : F3 _ξ12 = o.

Axiom F3_linear_add : forall (u v : A), F3 (u <+> v) = (F3 u) <+> (F3 v).
Axiom F3_linear_rmult : forall (r : R) (u : A), F3 (r *< u) = r *< F3 u.
Axiom F3_leibnitz : forall (u v : A), F3 (u <*> v) = F3 u<*>v <+> _K3 (K4 u) <*> (F3 v).



Variables z13 z14 z23 z24 : R.
Variable φ0 : A -> R.

Axiom linear_rmult_phi0 : forall (r : R) (u : A), φ0 (r *< u) = r * φ0 u.

(* ordered monomial の線形結合にする
 * (q - q^{-1}) e3 x14^n = (q^n - q^{-n}) x14^{n-1} x13
 * (q - q^{-1}) ρ (e3) z^{n} = q^{n+1}(q^{2n} - 1) z14^{n-1} z13
 * n=2 の例でチェックする
 *)
Lemma E3_x14_sqr : E3 (x14 <*> x14) = (q - (1/q)) *< (q *< x14 <*> x13) <+> (1/q) *< x14 <*> ((q - (1/q)) *< x13).
Proof.
  rewrite E3_leibnitz E3_x14 _K4_x14 K3_linear_rmult K3_x14.
  rewrite rmult_amult x13_x14_comm.
  done.
Qed.

Lemma E3_x14_sqr_xi12 : E3 (x14 <*> x14 <*> _ξ12) = ((q - (1/q)) *< (q *< x14 <*> x13) <+> (1/q) *< x14 <*> ((q - (1/q)) *< x13)) <*> _ξ12.
Proof.
  rewrite E3_leibnitz.
  rewrite E3_x14_sqr.
  rewrite E3__xi12 zero_mult_right zero_add_right.
  done.
Qed.


Lemma E3_z14_sqr_phi0 : q <> 0 -> 
  φ0 (((q - (1/q)) *< (q *< x14 <*> x13) <+> (1/q) *< x14 <*> ((q - (1/q)) *< x13)) <*> _ξ12) = (q - (1/q)) * (q * z14 * z13) + (1/q) * z14 * ((q - (1/q)) * z13) ->
  φ0 (E3 (x14 <*> x14 <*> _ξ12)) = (q^2 - (1/q)^2) * z14 * z13.
Proof.
  move=> Hnz Hl.
  rewrite E3_x14_sqr_xi12.
  rewrite Hl.
  field.
  exact Hnz.
Qed.

Lemma E3_z14_sqr_phi0' : q <> 0 -> 
  φ0 (((q - (1/q)) *< (q *< x14 <*> x13) <+> (1/q) *< x14 <*> ((q - (1/q)) *< x13)) <*> _ξ12) = (q - (1/q)) * (q * z14 * z13) + (1/q) * z14 * ((q - (1/q)) * z13) ->
  φ0 (E3 (q^4 *< (x14 <*> x14 <*> _ξ12))) = q^4 * (q^2 - (1/q)^2) * z14 * z13.
Proof.
  move=> Hnz Hl.
  rewrite E3_linear_rmult.
  rewrite linear_rmult_phi0.
  rewrite E3_x14_sqr_xi12.
  rewrite Hl.
  field.
  exact Hnz.
Qed.

Lemma E3_z14_sqr_phi : q <> 0 -> 
  φ0 (((q - (1/q)) *< (q *< x14 <*> x13) <+> (1/q) *< x14 <*> ((q - (1/q)) *< x13)) <*> _ξ12) = (q - (1/q)) * (q * z14 * z13) + (1/q) * z14 * ((q - (1/q)) * z13) ->
  φ0 (E3 (q^4 *< (x14 <*> x14 <*> _ξ12))) = q *(q * (q^4 - 1) * z14 * z13).
Proof.
  move=> Hnz Hl.
  rewrite E3_z14_sqr_phi0'.
  field.
  exact Hnz.
  exact Hnz.
  exact Hl.
Qed.


End QuantumGrassmannian.

