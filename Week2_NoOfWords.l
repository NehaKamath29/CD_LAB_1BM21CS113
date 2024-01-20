%{
#include<stdio.h>
int words;
%}
%%
[^\t\n ]+ {words++;}
\n {printf("No of words in the sentence are %d.\n",words),words=0;}
%%
void main()
{
printf("Enter a sentence:\n");
yylex();
}
int yywrap()
{
return 1;
}
       
