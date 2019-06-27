Require Import Omega.
From mathcomp Require Import all_ssreflect.

(*
 * Young 図形とマヤ図形の変換についての証明つきプログラム
 * マヤ図形については 81 行目以降を参照 
 * [Esc]-x goto-line で移動可能です
 * 
 * k_m > k_{m-1} > ... > k_1 > 1
 *
 * partition
 * p = (λ1, λ2, ..., λn)
 *
 * に対して,
 * λ1 := k_m - m, λ2 = k_{m-1} - (m - 1), ... 
 *
 *)

(* 
 * ssromega の引用元は以下のページです :
 * https://staff.aist.go.jp/reynald.affeldt/coqdev/ssrnat_ext.html
 * 証明を簡単にするためのタクティック
 *)
Ltac ssromega :=
  (repeat ssrnat2coqnat_hypo ;
   ssrnat2coqnat_goal ;
   omega)
with ssrnat2coqnat_hypo :=
  match goal with
    | H : context [?L < ?R] |- _ => move/ltP: H => H
    | H : context [?L <= ?R] |- _ => move/leP: H => H
    | H : context [?L < ?M < ?R] |- _ => let H1 := fresh in case/andP: H => H H1
    | H : context [?L <= ?M < ?R] |- _ => let H1 := fresh in case/andP: H => H H1
    | H : context [?L <= ?M <= ?R] |- _ => let H1 := fresh in case/andP: H => H H1
    | H : context [addn ?L ?R] |- _ => rewrite <- plusE in H
    | H : context [muln ?L ?R] |- _ => rewrite <- multE in H
    | H : context [subn ?L ?R] |- _ => rewrite <- minusE in H
    | H : ?x == _ |- _ => match type of x with nat => move/eqP in H end; idtac x
    | H : _ == ?x |- _ => match type of x with nat => move/eqP in H end; idtac x
    | H : _ != ?x |- _ => match type of x with nat => move/eqP in H end

  end
with ssrnat2coqnat_goal :=
  rewrite -?plusE -?minusE -?multE;
  match goal with
    | |- is_true (_ < _)%nat => apply/ltP
    | |- is_true (_ <= _)%nat => apply/leP
    | |- is_true (_ && _) => apply/andP; split; ssromega
    | |- is_true (?x != _) => match type of x with nat => apply/eqP end
    | |- is_true (_ != ?x) => match type of x with nat => apply/eqP end
    | |- is_true (?x == _) => match type of x with nat => apply/eqP end
    | |- is_true (_ == ?x) => match type of x with nat => apply/eqP end
    | |- _ /\ _ => split; ssromega
    | |- _ \/ _ => (left; ssromega) || (right; ssromega)
    | |- _ => idtac
  end.

(*
 * ssromega の使用例
 *)
Goal forall (l r a : nat),
    l + a = r + a -> l = r. (* l,n,a ∈ N に対して, l + a = r + a ならば l = r *)
Proof.
  move=> l r a H.
  ssromega.
Qed.

Goal forall (l km m : nat),
    km >= m -> l = km - m -> km = l + m.
Proof.
  move=> l km m H1 H2.
  ssromega.
Qed.

(*
 * マヤ図形 -> ヤング図形
 * m : リストの長さ
 * km > k_{m-1} > ... > k_1 > 1
 * となるマヤ図形を Young 図形に変換する.
 *)
Fixpoint young_of_rev_maya (s : seq nat) :=
  match s with
  | x :: xs => (x - (length s)) :: young_of_rev_maya xs
  | [::] => [::]
  end.

(* Young 図形からマヤ図形を作成する. *)
Fixpoint rev_maya_of_young (s : seq nat) := 
  match s with
  | x :: xs => (x + (length s)) :: rev_maya_of_young xs
  | [::] => [::]
  end.

Definition rev_maya_of_young_with_index (m : nat) (s : seq nat) :=
  map (fun x => x + m) (rev_maya_of_young s).

Compute rev_maya_of_young_with_index 2 [:: 5;3;2].




(* Young 図形とマヤ図形が 1 対 1 になることの検証 *)
Compute rev_maya_of_young [:: 4].
Compute rev_maya_of_young [:: 1;1;1].
Compute rev_maya_of_young [:: 3;1;1].
Compute rev_maya_of_young [:: 2;1;1].
Compute young_of_rev_maya (rev_maya_of_young [:: 2;1;1]).

Lemma same_length_rev_maya_of_young : forall (s : seq nat),
    length s = length (rev_maya_of_young s).
Proof.
  elim => [|a l IHl].
  - done.
  - rewrite //=.
    rewrite IHl.
    done.
Qed.    

Lemma same_length_young_of_rev_maya : forall (s : seq nat),
    length s = length (young_of_rev_maya s).
Proof.
  elim => [|a l IHl].
  - done.
  - rewrite //=. (* length の定義にしたがって処理 *)
    rewrite IHl. (* 帰納法の定義に書き換え *)
    done.
Qed.
    
Lemma rev_maya_refl : forall (s : seq nat),
    young_of_rev_maya (rev_maya_of_young s) = s.
Proof.
  elim => [|a l IHl]. 
  - done.
  - rewrite //=.
    rewrite -same_length_rev_maya_of_young.
    have Ha : a + (length l).+1 - (length l).+1 = a.
    - by ssromega.
      rewrite Ha.
      rewrite IHl.
      done.
Qed.

Definition maya_of_young (m : nat) (s : seq nat) :=
  rev (map (fun x => x + m) (rev_maya_of_young s)).
  

Require Import Extraction.
Extract Inductive list => "list" ["[]" "(::)"].
Extract Inductive nat => int ["0" "succ"] "(fun fO fS n -> if n = 0 then fO () else fS (n-1))".
Extraction "maya_ssr.ml" rev_maya_of_young maya_of_young.