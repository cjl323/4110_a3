(* CS 4110 Homework 3
   This is the file where you'll do your work. Your job is to take an AST
   (which has already been parsed for you) and execute it. Exceptional
   conditions will arise in some cases, see `errors.ml` for the exceptions to
   `raise` when these happen. *)

open Ast
open Errors

(* A type for stores. *)
type store = (* FILL ME IN *) unit

(* A type for configurations. *)
type configuration = (* FILL ME IN *) unit

(* Create an initial configuration from a command. *)
let make_configuration (c:com) : configuration =
  failwith "Not yet implemented"

(* Evaluate a command. *)
let rec evalc (conf:configuration) : store =
  failwith "Not yet implemented"
