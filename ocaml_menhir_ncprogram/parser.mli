
(* The type of tokens. *)

type token = 
  | Z
  | Y
  | X
  | T
  | ST
  | SHARP
  | SEP
  | S
  | RB
  | O
  | N
  | M
  | LB
  | INT of (int)
  | IF
  | GOTO
  | G
  | FLOAT of (float)
  | F
  | EQ
  | EOL
  | COMMENT
  | BEGINEND
  | B

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Nccode.t list)
