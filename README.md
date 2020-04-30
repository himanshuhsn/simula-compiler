# Simula compiler

## This section is for lexical analyzer portion

>NOTE:  Simula code (keywords) should be in lower case
>
### commands for compilation:
> flex scanner.l
> cc -Wall -c lex.yy.c
> cc -Wall scanner.c lex.yy.o
> ./a.out < inputfile

### file structures
There are 3 types of files:
- #### header files (.h extension)
	- operator.h
	- type.h
	- keyword.h

	These files contains the definitions that maps the operators, types, keywords to a number so that it could be returned by lex when particular pattern is found.
- #### lex files (.l extension)
	- scanner.l

	This file contains regular expresions for matching in the provided input files.
- #### c files (.c extension)
	- scanner.c

	This files prints the tokens in a readable manner to stdout, which can be redirected to other file.
