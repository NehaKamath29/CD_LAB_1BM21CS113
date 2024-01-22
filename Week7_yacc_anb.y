%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(char *s);
int yylex(void);
%}
%token A B
%%
smtr:A A A A A S B {printf("Valid string!\n");
                    exit(0);
                   }
;
S:S A
|
;
%%
void main()
{
printf("Enter a string:\n");
yyparse();
}
int yyerror(char *s)
{
printf("Invalid string!\n");
return 0;
}
