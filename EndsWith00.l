%{
#include<stdio.h>
%}
%%
[0-9]*00 {printf("The string %s ends with 00.\n",yytext);}
[0-9]* {printf("The string %s does not end with 00.\n");}
%%
int yywrap()
{
}
void main()
{
printf("Enter a string:\n");
yylex();
}
