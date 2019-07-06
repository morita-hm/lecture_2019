/*
 NC プログラムの構文
 */

%{
open Nccode

%}

%token BEGINEND
  
%token <int> INT
%token <float> FLOAT
%token SEP /* ; */

%token O /* O */

%token N /* N */

%token G /* G */
%token X /* X */
%token Y /* Y */
%token Z /* Z */
%token F /* F */
%token B /* B */

%token M /* M */
%token S /* S */
%token T /* T */

%token SHARP /* '#' */
%token EQ
%token ST /* '=' */
%token GOTO
%token IF
%token LB
%token RB


%token EOL
%token COMMENT

  
%start main
%type <Nccode.t list> main

%%

main:
  | EOL              { EMPTY :: [] }
  | expr EOL         { $1 }
;
  
/* <expr> ::= <cmd> ';' <expr>* */
expr:
  | BEGINEND             { BEGINEND :: [] }      
  | cmd                  { $1 :: [] }
  | cmd SEP              { $1 :: [] }
  | cmd SEP expr         { $1 :: $3 }
;


/* <cmd> ::= <ocode> | <ncode> | <gcode> | <mcode> | <assign> | <cmp> */
cmd:
  | ocode  { $1 }
  | ncode  { $1 }
  | gcode  { $1 }
  | mcode  { $1 }
  | assign { $1 }
  | cmp    { $1 }
;      


/* <ocode> ::= 'O' INT */
ocode:
  | O INT COMMENT
  | O INT
      { O $2 }
;

/* <ncode> ::= 'N' INT */
ncode:
  | N INT
  | N INT COMMENT
      { N $2 }
;

/*
 <gcode> ::= ('G' <int>)* <axis>? <feed>?     
 */
gcode:
  | G INT G INT G INT axis feed M INT
  | G INT G INT G INT axis feed
      { G ($2::$4::$6::[], $7, $8) }
  | G INT G INT G INT axis M INT
  | G INT G INT G INT axis
      { G ($2::$4::$6::[], $7, None) }
  | G INT G INT axis feed M INT
  | G INT G INT axis feed
      { G ($2::$4::[], $5, $6) }
  | G INT G INT axis M INT
  | G INT G INT axis
      { G ($2::$4::[], $5, None) }
  | G INT axis feed M INT
  | G INT axis feed
      { G ($2::[], $3, $4) }
  | G INT axis M INT
  | G INT axis
      { G ($2::[], $3, None) }
  | axis feed M INT
  | axis feed
      { G ([], $1, $2) }
  | axis M INT
  | axis
      { G ([], $1, None) }
;

/* <axis> ::= ('X' <float>)? ('Y' <float>)? ('Z' <float>) */
axis:
  | X FLOAT Y FLOAT Z FLOAT
      { XYZ (Some $2, Some $4, Some $6) }
  | X FLOAT Y FLOAT
      { XYZ (Some $2, Some $4, None) }
  | X FLOAT Z FLOAT
      { XYZ (Some $2, None, Some $4) }
  | Y FLOAT Z FLOAT
      { XYZ (None, Some $2, Some $4) }
  | X FLOAT
      { XYZ (Some $2, None, None) }
  | Y FLOAT
      { XYZ (None, Some $2, None) }
  | Z FLOAT
      { XYZ (None, None, Some $2) }
;

/* <feed> ::= ('F' <int>)? */
feed:
  | F INT { Some $2 }
;

/* <mcode> ::= ('S' <int>)? ('M' <int>)? */
mcode:
  | M INT
      { M (Some $2, None, None) }
  | M INT T INT /* ATC */
      { M (Some $2, Some $4, None) }
  | T INT M INT /* ATC */
      { M (Some $4, Some $2, None) }
  | M INT S INT T INT /* ATC & Start */
      { M (Some $2, Some $6, Some $4) }
  | M INT S INT
      { M (Some $2, None, Some $4) }
  | S INT M INT
      { M (Some $4, None, Some $2) }
  | S INT
      { M (None, None, Some $2) }
;

/* <assign> ::= '#' <int> '=' <int> */
assign:
  | SHARP INT ST INT { ASSIGN ($2, $4) }

/* <cmp> :: = 'IF' '[' '#' <int> 'EQ' <int> ']' 'GOTO' <int> */
cmp:
  | IF LB SHARP INT EQ INT RB GOTO INT { CMPGOTO ($4,$6,$9) } 
