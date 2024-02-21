(* CS 4110 Homework 3
   This is the file where you'll do your work. Your job is to take an AST
   (which has already been parsed for you) and execute it. Exceptional
   conditions will arise in some cases, see `errors.ml` for the exceptions to
   `raise` when these happen. *)

open Ast
open Errors

(*Our store is a map from a string to a value*)
module Store=Map.Make(String)
let empty_store=Store.empty
type store =  value Store.t
and value=
| VInt of int
| VBool of bool

(*The configuration is a map from a store to an expression*)
type configuration =  ((string*value) list)*com


(* Create an initial configuration from a command. *)
let make_configuration (c:com) : configuration = (Store.bindings(empty_store), c)

(* Evaluate a command. *)
let rec evalc (conf:configuration) : store =
  failwith "Not yet implemented"
