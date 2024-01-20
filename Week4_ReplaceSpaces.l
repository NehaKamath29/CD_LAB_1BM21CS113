%{
#include<stdio.h>
%}
%%
[ \t]+ {fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main()
{
yyin=fopen("text.txt","r");
yyout=fopen("print.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("Printed!\n");
}
int yywrap()
{
return 1;
}
   
