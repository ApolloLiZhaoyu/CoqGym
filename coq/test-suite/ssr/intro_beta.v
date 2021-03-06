(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2018       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(* (c) Copyright 2006-2016 Microsoft Corporation and Inria.                  *)

Require Import ssreflect.


Axiom T : Type.

Definition C (P : T -> Prop) := forall x, P x.

Axiom P : T -> T -> Prop.

Lemma foo : C (fun x => forall y, let z := x in P y x).
move=> a b.
match goal with |- (let y := _ in _) => idtac end.
Admitted.
