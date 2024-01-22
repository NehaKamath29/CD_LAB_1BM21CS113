%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(const char *s);
int yylex(void);
%}
%token num
%left '+' '-'
%left '*' '/'
%left ')' 
%left '('
%right '^'
%%
s:e {printf("\n");}
;
e:e'+'t {printf("+");}
|e'-'t {printf("-");}
|t
;
t:t'*'h {printf("*");}
|t'/'h {printf("/");}
|h
;
h:f'^'h {printf("^");}
|f
;
f:'('e')'
|num {printf("%d",$1);}
;
%%
void main()
{
printf("Enter an infix expression:\n");
yyparse();
}
int yyerror(const char *s)
{
printf("Invalid infix expression!\n");
return 0;
}

