%{
#include<stdio.h>
%}
alpha [a-zA-Z0-9]
%%
[a-zA-Z]+ {printf("Characters\n");}
[0-9]+ {printf("Digits");}
{alpha}+ {printf("Invalid input!\n");}
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
       
