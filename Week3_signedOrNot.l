%{
#include<stdio.h>
%}
%%
[+|-][0-9]+ {printf("Signed number!\n");}
[0-9]+ {printf("Unsigned number!\n");}
%%
int yywrap()
{
return 1;
}
void main()
{
printf("Enter a number:\n");
yylex();
}
