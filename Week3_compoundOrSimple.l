%{
#include<stdio.h>
int flag=0;
%}
%%
if|then|but|because|nevertheless|and|or {flag=1;}
. ;
\n {return 0;}
%%
int yywrap()
{
return 1;
}
void main()
{
printf("Enter a sentence:\n");
yylex();
if(flag==1)
printf("Compound sentence!\n");
else
printf("Simple sentence!\n");
}
