%{
   #include<stdio.h>
   int lc=0,sc=0,tc=0,ch=0;
%}

%%

\n {lc++;}
([ ]) {sc++;}
\t {tc++;}
. {ch++;}

%%

int yywrap() {}

void main() 
{
	printf("\nEnter a string:");
	yylex();
	printf("Number of lines:%d",lc);
	printf("Number of spaces:%d",sc);
	printf("Number of tabs:%d",tc);
	printf("Number of characters:%d",ch);
}