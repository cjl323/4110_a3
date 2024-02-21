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
| VString of string

(*The configuration is a map from a store to an expression*)
type configuration = store*com*com*(com*com list)


(* Create an initial configuration from a command. *)
let make_configuration (c:com) : configuration = (empty_store, c, Skip, [])

let is_valueA: aexp->bool = function
  | Int _-> true
  | Var _-> true
  | _-> false

  (*What is input?*)
let rec stepAexp : aexp -> aexp=function
  | Int i-> failwith "Do not step"
  | Var v-> failwith "Do not step"
  | Input -> failwith "No clue what to do here"
  | Some (a1, a2) when is_valueA a1 && is_valueA a2 -> step_some_A Some a1 a2
  | Some (a1, a2) when is_valueA a1-> Some (a1, stepAexp a2)
  | Some (a1, a2) -> Some (stepAexp a1, a2)

  and step_some_A some a1 a2 =
    match some, a1, a2 with
    | Plus, Int a1, Int a2 -> Int(a1+a2)
    | Times, Int a1, Int a2 -> Int(a1*a2)
    | Minus, Int a1, Int a2 -> Int(a1-a2)

(*evaluate an aexp*)
let rec evalAexp (e: aexp): value=
  if is_valueA e then e else
    e|> stepAexp |> evalAexp

let is_valueB: bexp->bool = function
  | True-> true
  | False-> true
  | _-> false

let rec stepBexp: bexp->bexp=function
  | True -> failwith "Do Not Step"
  | False -> failwith "Do Not Step"
  | Not b when is_valueB b-> Bool(!b)
  | Not b-> stepBexp b
  | And (b1, b2) when is_valueB b1 && is_valueB b2-> Bool(b1 && b2)
  | And (b1, b2) when is_valueB b1-> And(b1, stepBexp b2)
  | And (b1, b2)-> And(stepBexp b1, b2)
  | Or (b1, b2) when is_valueB b1 && is_valueB b2-> Bool(b1 || b2)
  | Or (b1, b2) when is_valueB b1-> Or(b1, stepBexp b2)
  | Or (b1, b2)->Or(stepBexp b1, b2)
  | Some (a1, a2) when is_valueA a1 && is_valueA a2 -> step_some_B Some a1 a2
  | Some (a1, a2) when is_valueA a1-> Some (a1, evalAexp a2)
  | Some (a1, a2) -> Some (evalAexp a1, a2)

  and step_some_B some a1 a2=
  match some, a1, a2 with
  | Equals, Int a1, Int a2-> Bool(a1==a2)
  | NotEquals, Int a1, Int a2-> Bool(a1!=a2)
  | Less, Int a1, Int a2->Bool(a1<a2)
  | LessEq, Int a1, Int a2->Bool(a1<=a2)
  | Greater, Int a1, Int a2->Bool(a1>a2)
  | GreaterEq, Int a1, Int a2->Bool(a1>=a2)



let rec evalBexp (e: bexp): value=
  if is_valueB e then e else
    e|> stepBexp |> evalBexp
    
(* Evaluate a command. *)
let rec evalc (conf:configuration) : store =
  match conf with
  | s, Skip, Skip, k-> s
  | s, Assign (var, aexp), Skip, k->Store.add var aexp s
  | s, Seq (c1, c2), Skip, k-> evalc s c1 Skip k and eval s c2 Skip k
  | s, Seq (c1, c2), Continue, k -> failwith "to do"
  | _-> failwith "to do"
