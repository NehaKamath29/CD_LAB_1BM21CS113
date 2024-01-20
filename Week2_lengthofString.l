%{
#include<stdio.h>
%}
%%
[a-zA-Z0-9.,!? \t]+ {printf("Length of input string is %d.\n",yyleng);}
%%
void main()
{
printf("Enter a string:\n");
yylex();
}
int yywrap()
{
return 1;
}
   
