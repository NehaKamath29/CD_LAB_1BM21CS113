%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
extern int yylval;
%}
%%
a {yylval=yytext[0];return A;}
b {yylval=yytext[0];return B;}
[\t ] {;}
\n return 0;
. return yytext[0];
%%
int yywrap()
{
return 1;
}
