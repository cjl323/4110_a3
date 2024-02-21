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

(*The configuration is formatted in the same as way as the instructions
   it looks as follows <store, c, c', k> where k is a list of pair (cb, cc)*)
type configuration = store*com*com*(com*com list)


(* Create an initial configuration from a command. *)
let make_configuration (c:com) : configuration = (empty_store, c, Skip, [])


(*******************************Evaluating an aexp****************************)
let is_valueA: aexp->bool = function
  | Int _-> true
  | Var _-> true
  | _-> false

  (*What is input?*)
let rec stepAexp : aexp -> aexp=function
  | Int i-> failwith "Do not step"
  | Var v-> failwith "Do not step"
  | Input -> failwith "No clue what to do here"
  | Plus (a1, a2) when is_valueA a1 && when is_valueA a2 -> Int(a1+a2)
  | Plus (a1, a2) when is_valueA a1-> Plus (a1, stepAexp a2)
  | Plus (a1, a2) -> Plus (stepAexp a1, a2)
  | Times (a1, a2) when is_valueA a1 && when is_valueA a2 -> Int(a1*a2)
  | Times (a1, a2) when is_valueA a1-> Times (a1, stepAexp a2)
  | Times (a1, a2) -> Times (stepAexp a1, a2)
  | Minus (a1, a2) when is_valueA a1 && when is_valueA a2 -> Int(a1-a2)
  | Minus (a1, a2) when is_valueA a1-> Minus (a1, stepAexp a2)
  | Minus (a1, a2) -> Minus (stepAexp a1, a2)

let rec evalAexp (e: aexp): value=
  if is_valueA e then e else
    e|> stepAexp |> evalAexp


(*******************************Evaluating a bexp*****************************)

(*Checking that bexp is a value*)
let is_valueB: bexp->bool = function
  | True-> true
  | False-> true
  | _-> false

(*When b is a value we need to actually extract the bool from the constructor*)
let boolB: bexp->bool=function
  | True->true
  | False->false
  | _-> failwith "Should never come here"

let fromBval: bool->bexp=function
  | true-> True
  | false-> False

let rec stepBexp: bexp->bexp=function
  | True -> true
  | False -> false
  | Not b when is_valueB b-> fromBval (not(boolB b))
  | Not b-> stepBexp b
  | And (b1, b2) when is_valueB b1 && is_valueB b2->  fromBval ((boolB b1) && (boolB b2))
  | And (b1, b2) when is_valueB b1-> And(b1, stepBexp b2)
  | And (b1, b2)-> And(stepBexp b1, b2)
  | Or (b1, b2) when is_valueB b1 && is_valueB b2-> fromBval ((boolB b1) || (boolB b2))
  | Or (b1, b2) when is_valueB b1-> Or(b1, stepBexp b2)
  | Or (b1, b2)->Or(stepBexp b1, b2)
  | Equals (a1, a2)-> fromBval ((evalAexp a1)==(evalAexp a2))
  | NotEquals (a1, a2) -> fromBval ((evalAexp a1)!=(evalAexp a2))
  | Less (a1, a2)-> fromBval ((evalAexp a1)<(evalAexp a2))
  | LessEq (a1, a2)-> fromBval ((evalAexp a1)<=(evalAexp a2))
  | Greater (a1, a2)-> fromBval ((evalAexp a1)>(evalAexp a2))
  | GreaterEq (a1, a2)-> fromBval ((evalAexp a1)>=(evalAexp a2))


let rec evalBexp (e: bexp): value=
  if is_valueB e then boolB e else
    e|> stepBexp |> evalBexp
    
(**************************** Evaluate a command*****************************)
let is_complete: com->bool=function
  | Skip->true
  | _-> false

(*When the conf is <store, Skip, Skip, k> then the program has terminated. 
   Otherwise, we will run the first commind first and the second. *)
let rec stepCom:configuration->configuration=function
  match conf with
  | s, Skip, Skip, k-> (s, Skip, Skip, k)
  | s, Skip, x, k-> (s, x, Skip, k)  

  | s, Assign (var, aexp), x, k->(Store.add var (evalAexp aexp) s, Skip, x, k)

  | s, Print(aexp), x, k-> pprintAexp(aexp); (s, Skip, x, k)

  | s, If(b, c1, c2), x, k when is_valueB b && boolB b->(s, c1, x, k)
  | s, If(b, c1, c2), x, k when is_valueB b && not(boolB b)-> (s, c2, x, k)
  | s, If(b, c1, c2), x, k-> (s, If(evalBexp b, c1, c2), x, k)


  | s, Seq (c1, c2), Skip, k-> 
  | s, Seq (c1, c2), Continue, k -> failwith "to do"

let rec evalc (conf:configuration) : store =
  match conf with 
  | s, c1, c2, k-> if is_complete c1 && is_complete c2 then s 
                    else conf|> stepCom |> evalc
