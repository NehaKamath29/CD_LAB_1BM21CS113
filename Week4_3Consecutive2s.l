%{
#include<stdio.h>
int flag=0;
%}
%%
[0-9]*[2][2][2][0-9]* {flag=1;}
. ;
\n {return 0;}
%%
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("Has 3 consecutive 2's.\n");
else
printf("Does not have 3 consecutive 2's.\n");
}
int yywrap()
{
return 1;
}
   
