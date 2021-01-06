%{
   #include<stdio.h>
   int flag=0;
%}

regex [a-z.0-9 _] + @[a-z] + ".com" | ".in"

%%

{regex} {flag=1;}

%%

int yywrap() {}

void main() 
{
	printf("\nEnter an email to validate:");
	yylex();
	if(flag==1)
	  printf("Valid email\n");
	else
	printf("Invalid email\n");
}