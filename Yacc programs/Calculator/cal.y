%{

	#include<stdio.h>

%}

%token num

%left '+' '-'
%left '*' '/' '%'

%%

s:E   {printf("result=%d\n",$$);
	return 0;}

E:  E'+'E    {$$=$1+$3;}
   |E'-'E    {$$=$1-$3;}
   |E'*'E    {$$=$1*$3;}
   |E'/'E    {$$=$1/$3;}
   |E'%'E    {$$=$1%$3;}
   |'-'num   {$$=-$2;}
   |'('E')'  {$$=$2;}
   |num      {$$=$1;}
   ;

%%

int main()
{

	printf("enter the expression: ");
	yyparse();
}
int yyerror(char *s)
{
	printf("expression is invalid\n");

}
