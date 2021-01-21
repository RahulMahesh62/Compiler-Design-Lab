%{ 
int line_number = 1; 
%} 
  
regex .*\n     
  
%% 

{regex} { printf("%10d %s", line_number++, yytext); }  
  
%% 
  
int yywrap(){}  
  
int main() 
{ 

extern FILE *yyin;  
yyin = fopen(FILE,MODE); 
yylex();   
return 0; 

} 