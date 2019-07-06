
nc_parser : nccode.cmo parser.ml parser.cmi lexer.ml main.ml
	ocamlc -o test_main nccode.cmo parser.ml lexer.ml main.ml

parser.cmi : parser.mli nccode.cmo
	ocamlc -c parser.mli

parser.ml : parser.mly
	menhir parser.mly     # generates parser.ml and parser.mli

lexer.ml : lexer.mll
	ocamllex lexer.mll       # generates lexer.ml

nccode.cmo : nccode.ml
	ocamlc -c nccode.ml

clean :
	rm -f *.cmo *.cmi test_main *~

