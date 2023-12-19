%{
#include<stdio.h>
%}
%%
[+-]?[0-9]*[.][0-9][0-9]* {printf("Floating point number.\n");}
[+-]?[0-9][0-9]* {printf("Not a floating point number.\n");}
%%
int yywrap()
{
}
void main()
{
printf("Enter a string:\n");
yylex();
}
