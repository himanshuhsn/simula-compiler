#include <stdio.h>
#include <stdlib.h>
#include "type.h"
#include "operator.h"
#include "keyword.h"

extern yylType yylval;

int main(void)
{
	int s;

	while( (s=yylex()) )
	{
		switch(s) {
			case ID : printf("<ID, %s> ", yylval.string);
						free (yylval.string);
						break;
			case NUM : printf("<NUM, %d> ",yylval.integer);
						break;
			case STRNG : printf("<STRNG, %s> ",yylval.string);
						free (yylval.string);
						break;

			case char_newline : printf("\n");
								break;

			//add the case for other keyword

			default : printf("%d ",s);
		}
	}

	return 0;
}
