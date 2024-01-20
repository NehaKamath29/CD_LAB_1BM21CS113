%{
#include<stdio.h>
int c,i,flag=1,sum=0,power=1;
%}
%%
^1[01]* {for(i=yyleng-1;i>=0;i--)
            {
              c=yytext[i]-'0';
              sum+=c*power;
              power*=2;
            }
             printf("Decimal representation:%d\n",sum);
             if(sum%5!=0)
             {
             printf("Not congruent to modulo 5.\n");
             sum=0;
             power=1;
             }
             else
             {
             printf("Congruent to modulo 5.\n");
             sum=0;
             power=1;
             }  
            }
.* {printf("Not a binary number.\n");}
\n {return 0;}
%%
void main()
{
printf("Enter a string:\n");
yylex();
}
int yywrap()
{
return 1;
}
