%{
#include<stdio.h>
int i=0,flag=1;
%}
%%
[0-9][0-9][0-9][0-9] {for(i=0;i<yyleng-1;i++)
                       {
                          if(yytext[i]>=yytext[i+1])
                          {
                             flag=0;
                             break;
                          }
                        }
                      }
\n {return 0;}
%%
int yywrap()
{
}
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("Digits in asc order.\n");
else
printf("Digits not in asc order.\n");
}
