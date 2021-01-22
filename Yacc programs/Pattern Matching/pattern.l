%{
	#includey.tab.h
	extern int yylval;

%}



%%
[a]     {return A;}
[b]	{return B;}

[t]        ;
[n]        {return 0;}
%%

int yywrap()
{
	return 1;
}