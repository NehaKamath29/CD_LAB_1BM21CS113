%{
#include<stdio.h>
%}
%%
[0-9]*222[0-9]* {printf("The string %s has 3 consecutive 2's.\n",yytext);}
[0-9]* {printf("The string %s does not have 3 consecutive 2's.\n",yytext);}
%%
int yywrap()
{
}
void main()
{
printf("Enter a string:\n");
yylex();
}
