%{
#include <ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}
%token digit
%%
S: E {printf("\n\n");}
;
E: E '+' T { printf ("+");}
| E '-' T {printf("-");}
| T
;
T: T '*' H { printf("*");}
| T '/' H { printf("/");}
| H
;
H: F '^' H { printf("^");}
| F
F: '(' E ')'
| digit {printf("%d", $1);}
;
%%
int main()
{
printf("Enter infix expression: ");
yyparse();
}
int yyerror()
{
printf("Error");
return 0;
}
