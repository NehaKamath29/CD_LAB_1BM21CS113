%{
#include<stdio.h>
int i=0,value=0,flag=0;
%}
%%
[0-9][0-9][0-9][0-9] {for(i=yyleng-1;i>=0;i--)
                       {
                          value+=yytext[i]-48;
                        }
                        if(value==9)
                        {
                        flag=1;
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
printf("Sum is 9.\n");
else
printf("Sum is not 9.\n");
}
