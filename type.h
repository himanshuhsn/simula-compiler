#ifndef _Y_TAB_H
#define _Y_TAB_H

#define STRNG 1
#define ID 2
#define NUM 3

int yylex(void);
typedef union {
	char *string;
	int integer;
} yylType;
#endif
