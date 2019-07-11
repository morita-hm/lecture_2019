
Require Import Reals.
From mathcomp Require Import all_ssreflect.
Open Scope R_scope.

Section Airy.

  Variables y1 y2 x : R.
  Variable δ : R -> R.
  Axiom linear_add : forall (f g : R),
      δ (f + g) = δ f + δ g.
  Axiom linear_sub : forall (f g : R),
      δ (f - g) = δ f - δ g.

  Axiom leibnitz : forall (f g : R),
      δ (f * g) = δ f * g + f * δ g.

  Definition y1' := δ y1.
  Definition y2' := δ y2.
  Definition y1'' := δ (δ y1).
  Definition y2'' := δ (δ y2).
  
  (* 
   * Airy の微分方程式のガロア群の検証
   * 梅村先生の「ガロア - 偉大なる曖昧さの理論 (現代数学社)」より引用
   *)
  Lemma SL2_invariant :
    y1'' = -x * y1 -> y2'' = -x * y2 -> δ (y1 * y2' - y2 * y1') = 0.
  Proof.
    move=> Hy1 Hy2.
    rewrite /y1' /y2'.
    rewrite linear_sub.
    repeat rewrite leibnitz.
    rewrite /y1'' in Hy1.
    rewrite /y2'' in Hy2.
    rewrite Hy1 Hy2.
    field.
  Qed.

End Airy.