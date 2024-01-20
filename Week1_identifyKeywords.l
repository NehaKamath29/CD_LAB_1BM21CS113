%{
#include<stdio.h>
%}
%%
printf|for|void|main|while|do|switch|case|int|char|float|double|if|else {printf("%s-keyword\n",yytext);}
, {printf("%s-separator\n",yytext);}
; {printf("%s-delimiter\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s-Identifier\n",yytext);}
">"|"<"|">="|"<="|"==" {printf("%s- Relational operator\n",yytext);}
"=" {printf("%s-assignment operator\n",yytext);}
[0-9]+ {printf("%s-digit\n",yytext);}
%%
void main()
{
printf("Give an input:\n");
yylex();
}
int yywrap()
{
return 1;
}
 
