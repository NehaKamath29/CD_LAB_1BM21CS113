%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(char *s);
int yylex(void);
%}
%token A
%token B
%token NL
%%
smtr:A A A A A S B NL {printf("Parsed using the rule (a^n)b, n>=5.\nValid String!\n");}
;
S:S A
|
;
%%
void main()
{
printf("Enter a string!\n");
yyparse();
}
int yyerror(char *s)
{
printf("Invalid String!\n");
return 0;
}
