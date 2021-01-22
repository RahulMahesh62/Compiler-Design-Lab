%{

	#include<stdio.h>

%}

%token A B


%%

s: S   {printf("the string is valid...\n");
	return 0;}

S: A S B
 | A B
 ;

%%

int main()
{

	printf("enter the string: ");
	yyparse();
}
int yyerror(char *s)
{
	printf("the string is invalid\n");

}
