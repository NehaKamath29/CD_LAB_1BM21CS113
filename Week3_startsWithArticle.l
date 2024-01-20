%{
#include<stdio.h>
int flag=0;
%}
%%
^(an|An|The|the|A|a)[" "].* {flag=1;}
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
printf("Starts with an article!\n");
else
printf("Does not start with an article!\n");
}
