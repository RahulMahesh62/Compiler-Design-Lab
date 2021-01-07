%{
   #include<stdio.h>
   int flag=0;
%}

website ^(https?:\/\/)?[0-9a-zA-Z]+\.[-_0-9a-zA-Z]+\.[0-9a-zA-Z]+$

%%

{website} {flag=1;}

%%

int yywrap() {}

void main() 
{
	printf("\nEnter a website:");
	yylex();
	if(flag==1) ? printf("Valid website"); : printf("Invalid website");
}