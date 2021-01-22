%{
	#include"y.tab.h"
	extern int yylval;

%}



%%
[0-9]+      {yylval=atoi(yytext);return num;}
.           return yytext[0];
[\t]        ;
[\n]        {return 0;}
%%

int yywrap()
{
	return 1;
}