%{
#include<stdio.h>
int sum=0,i,flag=0;
%}
%%
[0-9][0-9][0-9][0-9] {for(i=0;i<yyleng;i++)
                      {
                        sum+=yytext[i]-'0';
                       }
                      if(sum==9)
                      {
                       flag=1;
                       sum=0;
                      }
                      else
                      {
                      flag=0;
                      sum=0;
                      }
                      }
\n {return 0;}
%%
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("The sum of digits is 9.\n");
else 
printf("The sum of digits is not 9.\n");
}
int yywrap()
{
return 1;
}

