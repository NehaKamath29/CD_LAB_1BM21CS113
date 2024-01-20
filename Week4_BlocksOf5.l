%{
#include<stdio.h>
int i,count=0,flag;
%}
%%
.{1,5} {flag=0;
for(i=0;i<5;i++)
        {
          int c=yytext[i]-'0';
          if(c==5)
          {
           count++;
           if(count==2)
           {
            flag=1;
            break;
           }
           }
           }
           count=0;
           printf("yytext:%s,flag(1 if no of 5 is atleast 2):%d\n",yytext,flag);
           if(flag!=1)
           {
            printf("Not a valid string!\n");
           return 0;
         }
         }
         
\n {return 0;}
%%
void main()
{
printf("Enter a string:\n");
yylex();
if(flag==1)
printf("Valid string.\n");
}
int yywrap()
{
return 1;
}
