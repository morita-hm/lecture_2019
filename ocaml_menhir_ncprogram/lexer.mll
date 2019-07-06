
(* File lexer.mll *)
{
 open Parser        (* The type token is defined in parser.mli *)
 exception Eof
}


rule token = parse
| '('_*')'       { COMMENT }     (* ignore comments *)
| [' ' '\t' ]    { token lexbuf }     (* skip blanks *)
| '\n'           { EOL }
| '%'            { BEGINEND }         (* data start / end *)
| ';'            { SEP }
| '-'?['0'-'9']+'.'['0'-'9']* { FLOAT(float_of_string(Lexing.lexeme lexbuf)) }
| ['0'-'9']+     { INT(int_of_string(Lexing.lexeme lexbuf)) }
| '='            { ST }
| '['            { LB }
| ']'            { RB }
| "IF"           { IF }
| "EQ"           { EQ }
| "GOTO"         { GOTO }
| 'O'            { O }
| 'N'            { N }
| 'G'            { G } (* G-Code *)
| 'X'            { X } (* G-Code X-Axis *)
| 'Y'            { Y }
| 'Z'            { Z }
| 'F'            { F }
| 'M'            { M }
| 'S'            { S }
| 'T'            { T }
| 'B'            { B }
| '#'            { SHARP }
| eof            { raise Eof }

