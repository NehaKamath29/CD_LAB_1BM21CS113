%{
#include<stdio.h>
%}
digit [0-9]
%%
{digit}*1{digit}{digit}{digit}{digit}{digit}{digit}{digit}{digit}{digit} {printf("10th digit from right is 1.\n");}
{digit}* {printf("10th digit from right is not 1.\n");}
%%
int yywrap()
{
}
void main()
{
printf("Enter a string:\n");
yylex();
}
