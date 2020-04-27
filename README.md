simula compiler

commands for compilation:

flex scanner.l
cc -Wall -c lex.yy.c
cc -Wall scanner.c lex.yy.o
./a.out < input.in
