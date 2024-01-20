%{
#include<stdio.h>
int flag=0;
%}
%%
[0-9]+[00] {flag=1;}
. ;
\n {return 0;}
%%
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("Ends with 0.\n");
else
printf("Does not end with 0.\n");
}
int yywrap()
{
return 1;
}
   
