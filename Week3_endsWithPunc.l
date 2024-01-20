%{
#include<stdio.h>
int flag=0;
%}
%%
.*[?|!|.]$ {flag=1;}
.* {flag=0;}
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
printf("Ends with a punctuation!\n");
else
printf("Does not end with punctuation!\n");
}
