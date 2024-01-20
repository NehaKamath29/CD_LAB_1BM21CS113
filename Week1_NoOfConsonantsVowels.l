%{
#include<stdio.h>
int v=0,c=0;
%}
%%
[AEIOUaeiou] {v++;}
[A-Za-z] {c++;} 
\n {printf("No of vowels and consonants are %d and %d\n",v,c),v=0,c=0;}
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
       
