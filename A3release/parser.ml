type token =
  | INT of (
# 9 "parser.mly"
        Ast.info * int
# 6 "parser.ml"
)
  | VAR of (
# 10 "parser.mly"
        Ast.info * string
# 11 "parser.ml"
)
  | PLUS of (
# 11 "parser.mly"
        Ast.info
# 16 "parser.ml"
)
  | MINUS of (
# 11 "parser.mly"
        Ast.info
# 21 "parser.ml"
)
  | TIMES of (
# 11 "parser.mly"
        Ast.info
# 26 "parser.ml"
)
  | LPAREN of (
# 12 "parser.mly"
        Ast.info
# 31 "parser.ml"
)
  | RPAREN of (
# 12 "parser.mly"
        Ast.info
# 36 "parser.ml"
)
  | TRUE of (
# 12 "parser.mly"
        Ast.info
# 41 "parser.ml"
)
  | FALSE of (
# 12 "parser.mly"
        Ast.info
# 46 "parser.ml"
)
  | EQUALS of (
# 13 "parser.mly"
        Ast.info
# 51 "parser.ml"
)
  | NOTEQUALS of (
# 13 "parser.mly"
        Ast.info
# 56 "parser.ml"
)
  | LESS of (
# 13 "parser.mly"
        Ast.info
# 61 "parser.ml"
)
  | LESSEQ of (
# 13 "parser.mly"
        Ast.info
# 66 "parser.ml"
)
  | GREATER of (
# 13 "parser.mly"
        Ast.info
# 71 "parser.ml"
)
  | GREATEREQ of (
# 13 "parser.mly"
        Ast.info
# 76 "parser.ml"
)
  | NOT of (
# 14 "parser.mly"
        Ast.info
# 81 "parser.ml"
)
  | AND of (
# 14 "parser.mly"
        Ast.info
# 86 "parser.ml"
)
  | OR of (
# 14 "parser.mly"
        Ast.info
# 91 "parser.ml"
)
  | SKIP of (
# 15 "parser.mly"
        Ast.info
# 96 "parser.ml"
)
  | ASSIGN of (
# 15 "parser.mly"
        Ast.info
# 101 "parser.ml"
)
  | SEMI of (
# 15 "parser.mly"
        Ast.info
# 106 "parser.ml"
)
  | IF of (
# 15 "parser.mly"
        Ast.info
# 111 "parser.ml"
)
  | THEN of (
# 15 "parser.mly"
        Ast.info
# 116 "parser.ml"
)
  | ELSE of (
# 15 "parser.mly"
        Ast.info
# 121 "parser.ml"
)
  | WHILE of (
# 15 "parser.mly"
        Ast.info
# 126 "parser.ml"
)
  | DO of (
# 15 "parser.mly"
        Ast.info
# 131 "parser.ml"
)
  | LBRACE of (
# 16 "parser.mly"
        Ast.info
# 136 "parser.ml"
)
  | RBRACE of (
# 16 "parser.mly"
        Ast.info
# 141 "parser.ml"
)
  | BREAK of (
# 17 "parser.mly"
        Ast.info
# 146 "parser.ml"
)
  | CONTINUE of (
# 17 "parser.mly"
        Ast.info
# 151 "parser.ml"
)
  | TEST of (
# 17 "parser.mly"
        Ast.info
# 156 "parser.ml"
)
  | INPUT of (
# 17 "parser.mly"
        Ast.info
# 161 "parser.ml"
)
  | PRINT of (
# 17 "parser.mly"
        Ast.info
# 166 "parser.ml"
)
  | EOF

open Parsing
let _ = parse_error;;
# 2 "parser.mly"
open Ast
open Printf
open Lexing

let merge (fn,pos1,_) (_,_,pos2) = (fn,pos1,pos2)
# 178 "parser.ml"
let yytransl_const = [|
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* VAR *);
  259 (* PLUS *);
  260 (* MINUS *);
  261 (* TIMES *);
  262 (* LPAREN *);
  263 (* RPAREN *);
  264 (* TRUE *);
  265 (* FALSE *);
  266 (* EQUALS *);
  267 (* NOTEQUALS *);
  268 (* LESS *);
  269 (* LESSEQ *);
  270 (* GREATER *);
  271 (* GREATEREQ *);
  272 (* NOT *);
  273 (* AND *);
  274 (* OR *);
  275 (* SKIP *);
  276 (* ASSIGN *);
  277 (* SEMI *);
  278 (* IF *);
  279 (* THEN *);
  280 (* ELSE *);
  281 (* WHILE *);
  282 (* DO *);
  283 (* LBRACE *);
  284 (* RBRACE *);
  285 (* BREAK *);
  286 (* CONTINUE *);
  287 (* TEST *);
  288 (* INPUT *);
  289 (* PRINT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\005\000\005\000\006\000\006\000\006\000\
\006\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\007\000\007\000\008\000\008\000\009\000\009\000\010\000\010\000\
\010\000\003\000\003\000\011\000\011\000\011\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\004\000\000\000"

let yylen = "\002\000\
\003\000\003\000\001\000\003\000\001\000\001\000\001\000\003\000\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\001\000\
\003\000\001\000\003\000\001\000\002\000\001\000\001\000\001\000\
\003\000\003\000\001\000\006\000\004\000\001\000\001\000\003\000\
\003\000\002\000\002\000\001\000\001\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\031\000\000\000\000\000\000\000\036\000\
\037\000\000\000\000\000\000\000\039\000\000\000\030\000\000\000\
\006\000\007\000\000\000\023\000\024\000\000\000\009\000\000\000\
\000\000\000\000\005\000\000\000\000\000\020\000\022\000\000\000\
\000\000\035\000\000\000\000\000\038\000\000\000\000\000\000\000\
\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\033\000\000\000\026\000\008\000\025\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\
\019\000\029\000\000\000\028\000"

let yydgoto = "\002\000\
\024\000\041\000\012\000\013\000\026\000\027\000\028\000\029\000\
\030\000\031\000\014\000\015\000"

let yysindex = "\008\000\
\001\255\000\000\250\254\000\000\009\255\009\255\001\255\000\000\
\000\000\009\255\041\255\016\000\000\000\024\255\000\000\041\255\
\000\000\000\000\009\255\000\000\000\000\013\255\000\000\093\255\
\032\255\045\255\000\000\052\255\044\255\000\000\000\000\046\255\
\047\255\000\000\041\255\003\255\000\000\001\255\003\255\077\255\
\067\255\009\255\000\000\041\255\041\255\041\255\041\255\041\255\
\041\255\041\255\041\255\027\255\041\255\043\255\043\255\027\255\
\000\000\062\255\000\000\000\000\000\000\045\255\045\255\003\255\
\003\255\003\255\003\255\003\255\003\255\054\255\000\000\044\255\
\000\000\000\000\027\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\001\000\000\000\077\000\062\000\000\000\000\000\000\000\
\000\000\000\000\000\000\131\000\000\000\000\000\133\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\027\000\053\000\086\000\
\095\000\101\000\110\000\119\000\125\000\000\000\000\000\071\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\245\255\058\000\251\255\000\000\224\255\023\000\000\000\025\000\
\028\000\060\000\000\000\248\255"

let yytablesize = 417
let yytable = "\036\000\
\003\000\033\000\003\000\027\000\039\000\044\000\045\000\040\000\
\001\000\017\000\018\000\062\000\063\000\016\000\019\000\037\000\
\020\000\021\000\042\000\004\000\020\000\021\000\005\000\058\000\
\022\000\006\000\001\000\007\000\003\000\008\000\009\000\010\000\
\059\000\011\000\064\000\065\000\066\000\067\000\068\000\069\000\
\023\000\017\000\018\000\070\000\038\000\004\000\035\000\074\000\
\042\000\053\000\020\000\021\000\002\000\007\000\052\000\008\000\
\009\000\010\000\022\000\011\000\055\000\018\000\025\000\032\000\
\044\000\045\000\076\000\034\000\060\000\054\000\017\000\056\000\
\023\000\061\000\057\000\071\000\016\000\075\000\072\000\044\000\
\045\000\043\000\073\000\060\000\000\000\010\000\046\000\047\000\
\048\000\049\000\050\000\051\000\000\000\000\000\011\000\044\000\
\045\000\000\000\000\000\000\000\012\000\000\000\046\000\047\000\
\048\000\049\000\050\000\051\000\000\000\013\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\014\000\000\000\
\000\000\000\000\000\000\000\000\015\000\000\000\000\000\000\000\
\000\000\000\000\034\000\000\000\032\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\003\000\003\000\000\000\000\000\003\000\
\000\000\000\000\003\000\003\000\003\000\003\000\003\000\003\000\
\000\000\000\000\000\000\000\000\000\000\003\000\000\000\003\000\
\003\000\000\000\003\000\000\000\003\000\001\000\001\000\027\000\
\000\000\001\000\000\000\000\000\001\000\001\000\001\000\001\000\
\001\000\001\000\000\000\000\000\000\000\000\000\000\000\001\000\
\000\000\001\000\001\000\000\000\001\000\000\000\001\000\002\000\
\002\000\000\000\000\000\002\000\000\000\000\000\002\000\002\000\
\002\000\002\000\002\000\002\000\018\000\000\000\000\000\000\000\
\000\000\002\000\000\000\002\000\002\000\017\000\002\000\018\000\
\002\000\000\000\018\000\016\000\018\000\018\000\000\000\018\000\
\017\000\018\000\000\000\017\000\010\000\017\000\017\000\000\000\
\017\000\016\000\017\000\016\000\016\000\011\000\016\000\000\000\
\016\000\000\000\010\000\012\000\010\000\010\000\000\000\010\000\
\000\000\010\000\000\000\011\000\013\000\011\000\011\000\000\000\
\011\000\012\000\011\000\012\000\012\000\014\000\012\000\000\000\
\012\000\000\000\013\000\015\000\013\000\013\000\000\000\013\000\
\000\000\013\000\000\000\014\000\000\000\014\000\014\000\000\000\
\014\000\015\000\014\000\015\000\015\000\000\000\015\000\034\000\
\015\000\032\000\034\000\000\000\032\000\000\000\034\000\000\000\
\032\000"

let yycheck = "\011\000\
\000\000\007\000\002\001\000\000\016\000\003\001\004\001\019\000\
\001\000\001\001\002\001\044\000\045\000\020\001\006\001\000\000\
\008\001\009\001\006\001\019\001\008\001\009\001\022\001\035\000\
\016\001\025\001\000\000\027\001\002\001\029\001\030\001\031\001\
\038\000\033\001\046\000\047\000\048\000\049\000\050\000\051\000\
\032\001\001\001\002\001\052\000\021\001\019\001\006\001\056\000\
\006\001\005\001\008\001\009\001\000\000\027\001\023\001\029\001\
\030\001\031\001\016\001\033\001\017\001\000\000\005\000\006\000\
\003\001\004\001\075\000\010\000\007\001\018\001\000\000\026\001\
\032\001\007\001\028\001\053\000\000\000\024\001\054\000\003\001\
\004\001\022\000\055\000\007\001\255\255\000\000\010\001\011\001\
\012\001\013\001\014\001\015\001\255\255\255\255\000\000\003\001\
\004\001\255\255\255\255\255\255\000\000\255\255\010\001\011\001\
\012\001\013\001\014\001\015\001\255\255\000\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\003\001\004\001\255\255\255\255\007\001\
\255\255\255\255\010\001\011\001\012\001\013\001\014\001\015\001\
\255\255\255\255\255\255\255\255\255\255\021\001\255\255\023\001\
\024\001\255\255\026\001\255\255\028\001\003\001\004\001\028\001\
\255\255\007\001\255\255\255\255\010\001\011\001\012\001\013\001\
\014\001\015\001\255\255\255\255\255\255\255\255\255\255\021\001\
\255\255\023\001\024\001\255\255\026\001\255\255\028\001\003\001\
\004\001\255\255\255\255\007\001\255\255\255\255\010\001\011\001\
\012\001\013\001\014\001\015\001\007\001\255\255\255\255\255\255\
\255\255\021\001\255\255\023\001\024\001\007\001\026\001\018\001\
\028\001\255\255\021\001\007\001\023\001\024\001\255\255\026\001\
\018\001\028\001\255\255\021\001\007\001\023\001\024\001\255\255\
\026\001\021\001\028\001\023\001\024\001\007\001\026\001\255\255\
\028\001\255\255\021\001\007\001\023\001\024\001\255\255\026\001\
\255\255\028\001\255\255\021\001\007\001\023\001\024\001\255\255\
\026\001\021\001\028\001\023\001\024\001\007\001\026\001\255\255\
\028\001\255\255\021\001\007\001\023\001\024\001\255\255\026\001\
\255\255\028\001\255\255\021\001\255\255\023\001\024\001\255\255\
\026\001\021\001\028\001\023\001\024\001\255\255\026\001\021\001\
\028\001\021\001\024\001\255\255\024\001\255\255\028\001\255\255\
\028\001"

let yynames_const = "\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  VAR\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  LPAREN\000\
  RPAREN\000\
  TRUE\000\
  FALSE\000\
  EQUALS\000\
  NOTEQUALS\000\
  LESS\000\
  LESSEQ\000\
  GREATER\000\
  GREATEREQ\000\
  NOT\000\
  AND\000\
  OR\000\
  SKIP\000\
  ASSIGN\000\
  SEMI\000\
  IF\000\
  THEN\000\
  ELSE\000\
  WHILE\000\
  DO\000\
  LBRACE\000\
  RBRACE\000\
  BREAK\000\
  CONTINUE\000\
  TEST\000\
  INPUT\000\
  PRINT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ta) in
    Obj.repr(
# 30 "parser.mly"
                          ( Plus(_1, _3) )
# 437 "parser.ml"
               : Ast.aexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ta) in
    Obj.repr(
# 31 "parser.mly"
                          ( Minus(_1, _3) )
# 446 "parser.ml"
               : Ast.aexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ta) in
    Obj.repr(
# 32 "parser.mly"
                          ( _1 )
# 453 "parser.ml"
               : Ast.aexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ta) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aa) in
    Obj.repr(
# 34 "parser.mly"
                          ( Times(_1, _3) )
# 462 "parser.ml"
               : 'ta))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'aa) in
    Obj.repr(
# 35 "parser.mly"
                          ( _1 )
# 469 "parser.ml"
               : 'ta))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info * int) in
    Obj.repr(
# 37 "parser.mly"
                          ( Int(snd _1) )
# 476 "parser.ml"
               : 'aa))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info * string) in
    Obj.repr(
# 38 "parser.mly"
                          ( Var(snd _1) )
# 483 "parser.ml"
               : 'aa))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.aexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 39 "parser.mly"
                          ( _2 )
# 492 "parser.ml"
               : 'aa))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 40 "parser.mly"
                          ( Input )
# 499 "parser.ml"
               : 'aa))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 43 "parser.mly"
                          ( Equals(_1, _3) )
# 508 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 44 "parser.mly"
                          ( NotEquals (_1, _3) )
# 517 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 45 "parser.mly"
                          ( Less(_1, _3) )
# 526 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 46 "parser.mly"
                          ( LessEq(_1, _3) )
# 535 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 47 "parser.mly"
                          ( Greater(_1, _3) )
# 544 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.aexp) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 48 "parser.mly"
                          ( GreaterEq(_1, _3) )
# 553 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'db) in
    Obj.repr(
# 49 "parser.mly"
                          ( _1 )
# 560 "parser.ml"
               : Ast.bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'db) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'cb) in
    Obj.repr(
# 51 "parser.mly"
                          ( Or(_1, _3) )
# 569 "parser.ml"
               : 'db))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cb) in
    Obj.repr(
# 52 "parser.mly"
                          ( _1 )
# 576 "parser.ml"
               : 'db))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cb) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'nb) in
    Obj.repr(
# 54 "parser.mly"
                          ( And(_1, _3) )
# 585 "parser.ml"
               : 'cb))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'nb) in
    Obj.repr(
# 55 "parser.mly"
                          ( _1 )
# 592 "parser.ml"
               : 'cb))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ab) in
    Obj.repr(
# 57 "parser.mly"
                          ( Not(_2) )
# 600 "parser.ml"
               : 'nb))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ab) in
    Obj.repr(
# 58 "parser.mly"
                          ( _1 )
# 607 "parser.ml"
               : 'nb))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 60 "parser.mly"
                          ( True )
# 614 "parser.ml"
               : 'ab))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 61 "parser.mly"
                          ( False )
# 621 "parser.ml"
               : 'ab))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.bexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 62 "parser.mly"
                          ( _2 )
# 630 "parser.ml"
               : 'ab))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ic) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.com) in
    Obj.repr(
# 65 "parser.mly"
                          ( Seq(_1, _3) )
# 639 "parser.ml"
               : Ast.com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ic) in
    Obj.repr(
# 66 "parser.mly"
                          ( _1 )
# 646 "parser.ml"
               : Ast.com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Ast.bexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : Ast.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'ac) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'ac) in
    Obj.repr(
# 68 "parser.mly"
                          ( If(_2, _4, _6) )
# 658 "parser.ml"
               : 'ic))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Ast.bexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'ac) in
    Obj.repr(
# 69 "parser.mly"
                          ( While(_2, _4) )
# 668 "parser.ml"
               : 'ic))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ac) in
    Obj.repr(
# 70 "parser.mly"
                          ( _1 )
# 675 "parser.ml"
               : 'ic))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 72 "parser.mly"
                          ( Skip )
# 682 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.info * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 73 "parser.mly"
                          ( Assign(snd _1, _3) )
# 691 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.com) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 74 "parser.mly"
                          ( _2 )
# 700 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.aexp) in
    Obj.repr(
# 75 "parser.mly"
                          ( Print _2 )
# 708 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.bexp) in
    Obj.repr(
# 76 "parser.mly"
                          ( Test(_1, _2) )
# 716 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 77 "parser.mly"
                          ( Break )
# 723 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.info) in
    Obj.repr(
# 78 "parser.mly"
                          ( Continue )
# 730 "parser.ml"
               : 'ac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.com) in
    Obj.repr(
# 81 "parser.mly"
                          ( _1 )
# 737 "parser.ml"
               : Ast.com))
(* Entry p *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let p (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.com)
