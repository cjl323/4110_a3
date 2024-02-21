type token =
  | INT of (
# 9 "parser.mly"
        Ast.info * int
# 6 "parser.mli"
)
  | VAR of (
# 10 "parser.mly"
        Ast.info * string
# 11 "parser.mli"
)
  | PLUS of (
# 11 "parser.mly"
        Ast.info
# 16 "parser.mli"
)
  | MINUS of (
# 11 "parser.mly"
        Ast.info
# 21 "parser.mli"
)
  | TIMES of (
# 11 "parser.mly"
        Ast.info
# 26 "parser.mli"
)
  | LPAREN of (
# 12 "parser.mly"
        Ast.info
# 31 "parser.mli"
)
  | RPAREN of (
# 12 "parser.mly"
        Ast.info
# 36 "parser.mli"
)
  | TRUE of (
# 12 "parser.mly"
        Ast.info
# 41 "parser.mli"
)
  | FALSE of (
# 12 "parser.mly"
        Ast.info
# 46 "parser.mli"
)
  | EQUALS of (
# 13 "parser.mly"
        Ast.info
# 51 "parser.mli"
)
  | NOTEQUALS of (
# 13 "parser.mly"
        Ast.info
# 56 "parser.mli"
)
  | LESS of (
# 13 "parser.mly"
        Ast.info
# 61 "parser.mli"
)
  | LESSEQ of (
# 13 "parser.mly"
        Ast.info
# 66 "parser.mli"
)
  | GREATER of (
# 13 "parser.mly"
        Ast.info
# 71 "parser.mli"
)
  | GREATEREQ of (
# 13 "parser.mly"
        Ast.info
# 76 "parser.mli"
)
  | NOT of (
# 14 "parser.mly"
        Ast.info
# 81 "parser.mli"
)
  | AND of (
# 14 "parser.mly"
        Ast.info
# 86 "parser.mli"
)
  | OR of (
# 14 "parser.mly"
        Ast.info
# 91 "parser.mli"
)
  | SKIP of (
# 15 "parser.mly"
        Ast.info
# 96 "parser.mli"
)
  | ASSIGN of (
# 15 "parser.mly"
        Ast.info
# 101 "parser.mli"
)
  | SEMI of (
# 15 "parser.mly"
        Ast.info
# 106 "parser.mli"
)
  | IF of (
# 15 "parser.mly"
        Ast.info
# 111 "parser.mli"
)
  | THEN of (
# 15 "parser.mly"
        Ast.info
# 116 "parser.mli"
)
  | ELSE of (
# 15 "parser.mly"
        Ast.info
# 121 "parser.mli"
)
  | WHILE of (
# 15 "parser.mly"
        Ast.info
# 126 "parser.mli"
)
  | DO of (
# 15 "parser.mly"
        Ast.info
# 131 "parser.mli"
)
  | LBRACE of (
# 16 "parser.mly"
        Ast.info
# 136 "parser.mli"
)
  | RBRACE of (
# 16 "parser.mly"
        Ast.info
# 141 "parser.mli"
)
  | BREAK of (
# 17 "parser.mly"
        Ast.info
# 146 "parser.mli"
)
  | CONTINUE of (
# 17 "parser.mly"
        Ast.info
# 151 "parser.mli"
)
  | TEST of (
# 17 "parser.mly"
        Ast.info
# 156 "parser.mli"
)
  | INPUT of (
# 17 "parser.mly"
        Ast.info
# 161 "parser.mli"
)
  | PRINT of (
# 17 "parser.mly"
        Ast.info
# 166 "parser.mli"
)
  | EOF

val p :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.com
