%{
	#include<stdio.h>
	#include<stdlib.h>
	int num = 0;
%}



DIGIT [0-9]


%%

[ \t]+	{}
{DIGIT} {printf("digit\n");}
{DIGIT}*	{printf("=> %s\n", yytext);}
.		{printf("Error\n");}

%%
int yywrap(void) {return 1;}

int main( int argc, char **argv )
{
    ++argv, --argc;  /* skip over program name */
    yyin = stdin;
    yylex();
}
