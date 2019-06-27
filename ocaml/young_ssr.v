From mathcomp Require Import all_ssreflect.

Compute last 0 [:: 1;2;3] != 0.

Fixpoint create_two_partitions (p1 p2 : nat) (tail : seq nat) :=
  let pt := head 0 tail in
  match p1 with
  | p1'.+1 => if p1' >= p2.+1 then
                if p2.+1 >= pt then ([:: p1';p2.+1] ++ tail) :: create_two_partitions p1' p2.+1 tail
                else create_two_partitions p1' p2.+1 tail
              else [::]
  | 0 => [::]
  end.

Definition two_partitions (p : nat) (post : seq nat) := create_two_partitions p 0 post.

Compute two_partitions 5 [::].
Compute two_partitions 4 [:: 2].

Compute two_partitions 10 [::].
Check foldr.
Print "++".
Compute foldr cat [::] (map (fun p => two_partitions (head 0 p) ([:: last 0 p] ++ [::])) [:: [:: 4;1]; [:: 3;2]]).

Check behead.
Compute behead [:: 2;1;1].

Definition three_partitions (p : nat) (tail : seq nat) :=
  let p2 := two_partitions p tail in
  foldr cat [::] (map (fun x => two_partitions (head 0 x) ((behead x) ++ tail)) p2).

Compute three_partitions 10 [::].


Definition four_partitions (p : nat) (post : seq nat) :=
  let p2 := three_partitions p post in
  foldr cat [::] (map (fun x => two_partitions (head 0 x) ((behead x) ++ post)) p2).

Compute four_partitions 5 [::].

Check two_partitions.
Check three_partitions.

Fixpoint nth_partitons (n : nat) (p : nat) (post : seq nat) :=
  match n with
  | 0 => [::]
  | 1 => [:: [:: p]]
  | 2 => two_partitions p post
  | n'.+1 => foldr cat [::] (map (fun x => two_partitions (head 0 x) ((behead x) ++ post)) (nth_partitons n' p post))
  end.

Compute nth_partitons 5 10 [::].
Compute nseq 10 1.

Fixpoint partitions (p n : nat) :=
  match n with
  | n'.+1 => nth_partitons (p-n') p [::] ++ partitions p n'
  | 0 => [::]
  end.

Compute partitions 15 15.
Compute partitions 7 7.

Require Import Extraction.
Extract Inductive list => "list" ["[]" "(::)"].
Extract Inductive nat => int ["0" "succ"] "(fun fO fS n -> if n = 0 then fO () else fS (n-1))".
Extraction "young_ssr.ml" partitions.