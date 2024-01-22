%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(const char *s);
int yylex(void);
%}
%token num;
%left '+' '-'
%left '*' '/'
%left ')' 
%left '('
%%
s:e {printf("Valid expression!\n");
     printf("Result:%d\n",$$);
     exit(0);
    }
;
e:e'+'e {$$=$1+$3;}
|e'-'e {$$=$1-$3;}
|e'*'e {$$=$1*$3;}
|e'/'e {$$=$1/$3;}
|'('e')' {$$=$2;}
|num {$$=$1;}
;
%%
void main()
{
printf("Enter an arithmetic expression:\n");
yyparse();
}
int yyerror(const char *s)
{
printf("Invalid expression!\n");
return 0;
}
