#ifndef _Y_TAB_H
#define _Y_TAB_H

#define STRNG 0
#define ID 1
#define NUM 2

int yylex(void);
typedef union {
	char *string;
	int integer;
} yylType;
#endif
