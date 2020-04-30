/* A Scanner for Simula language*/

%{
#include <string.h>
#include <stdlib.h>

/* tokens arie defined in these headers */
#include "type.h"
#include "operator.h"
#include "keyword.h"

/*variables declaration*/
int line_count = 0;
yylType yylval;
%}

%x CMNT

DELIM      	([ \t])
WHITESPACES ({DELIM}+)
POSI_DECI   ([1-9])
DECI    	(0|{POSI_DECI})
DECIMAL    	(0|{POSI_DECI}{DECI}*)
LOWER      	([a-z])
LETTER     	({LOWER}|[:upper:]|_)
IDENTIFIER 	({LETTER}({LETTER}|{DECI}|_)*)

%%

"comment" 	{BEGIN CMNT;}
<CMNT>\n	{++line_count;}
<CMNT>";" 	{BEGIN INITIAL;}
<CMNT>.		{;}

\n			{
				++line_count;
				return char_newline;
			}

"\"".*"\""  {
				yylval.string=(char *)malloc((yyleng+1)*(sizeof(char)));
				strncpy(yylval.string, yytext+1, yyleng-2);
				yylval.string[yyleng-2]='\0';
				return STRNG;
			}

{WHITESPACES} {;}

":="  {return op_stdassign;}
":-"  {return op_refassign;}
"not"  {return op_boolnot;}
"and"  {return op_booland;}
"or"  {return op_boolor;}
"="  {return op_equal;}
"<>"  {return op_notequal;}
"<="  {return op_lessequal;}
">="  {return op_greaterequal;}
"<"  {return op_less;}
">"  {return op_greater;}
"!"  {return op_comment;}
"("	 {return op_leftparen;}
")"  {return op_rightparen;}
";"  {return op_semicolon;}
"+"  {return op_plus;}
"-"  {return op_minus;}
"*"  {return op_mult;}
"/"  {return op_div;}

"short integer"  {return data_shortint;}
"real"  {return data_real;}
"long real"  {return data_longreal;}
"boolean"  {return data_bool;}
"boolean character"  {return data_boolchar;}

"activate"  {return key_activate;}
"after"  {return key_after;}
"array"  {return key_array;}
"at"  {return key_at;}
"before"  {return key_before;}
"begin"  {return key_begin;}
"character"  {return key_character;}
"class"  {return key_class;}

"delay"  {return key_delay;}
"do"  {return key_do;}
"else"  {return key_else;}
"end"  {return key_end;}
"eqv"  {return key_eqv;}
"external"  {return key_external;}
"for"  {return key_for;}
"go"  {return key_go;}
"goto"  {return key_goto;}

"hidden"  {return key_hidden;}
"if"  {return key_if;}
"imp"  {return key_imp;}
"in"  {return key_in;}
"inner"  {return key_inner;}
"inspect"  {return key_inspect;}
"integer"  {return key_integer;}
"is"  {return key_is;}
"long"  {return key_long;}

"name"  {return key_name;}
"new"  {return key_new;}
"none"  {return key_none;}
"notext"  {return key_notext;}
"otherwise"  {return key_otherwise;}
"prior"  {return key_prior;}
"procedure"  {return key_procedure;}
"protected"  {return key_protected;}
"qua"  {return key_qua;}

"reactivate"  {return key_reactivate;}
"ref"  {return key_ref;}
"short"  {return key_short;}
"step"  {return key_step;}
"switch"  {return key_switch;}
"text"  {return key_text;}
"then"  {return key_then;}
"this"  {return key_this;}
"to"  {return key_to;}

"until"  {return key_until;}
"value"  {return key_value;}
"virtual"  {return key_virtual;}
"when"  {return key_when;}
"while"  {return key_while;}
"false"  {return key_false;}
"true"  {return key_true;}

"outtext"  {return key_outtext;}
"outimage"  {return key_outimage;}
"outreal"  {return key_outreal;}
"outint"  {return key_outint;}

{IDENTIFIER}	{
					yylval.string=(char *)malloc((yyleng+1)*(sizeof(char)));
					strncpy(yylval.string, yytext, yyleng + 1);
					return ID;
		}

{DECIMAL}	{
				yylval.integer = atoi(yytext);
				return NUM;
		}
.			{;}

%%

int yywrap(void)
{
	return 1;
}
