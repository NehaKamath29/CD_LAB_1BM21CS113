%{
#include<stdio.h>
int flag=0;
%}
%%
[0-9]*1[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] {flag=1;}
. ;
\n {return 0;}
%%
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("10th symbol from right is 1.\n");
else
printf("10th symbol from right is not 1.\n");
}
int yywrap()
{
return 1;
}
  
