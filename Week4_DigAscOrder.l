%{
#include<stdio.h>
int c,i,flag=1;
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
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("The digits are in ascending order.\n");
else 
printf("The digits are not in ascending order.\n");
}
int yywrap()
{
return 1;
}
