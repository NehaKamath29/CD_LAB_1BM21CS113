#include <stdio.h>
#include<stdlib.h>
char input[100];  
int ind = 0;
void match(char expected) 
{
    if (input[ind] == expected) 
    {
        ind++;
    }
}
void A();
void S() 
{
    match('c');
    A();
    match('d');
}
void A() 
{
    if (input[ind] == 'a') 
    {
        printf("Hello\n");
        match('a');
        match('b');
    } /*else if (input[ind] == 'a') 
    {
        printf("Hi!\n");
        match('a');
    }*/
    else 
    {  
        printf("Parsing failed.\n", ind);
        exit(1);
    }
}
int main() {
    printf("Enter the input string:\n");
    scanf("%s", input);

    S();

    if (input[ind] == '$') {
        printf("Parsing successful.\n");
    } else {
        printf("Parsing failed. Extra characters found.\n");
    }

    return 0;
}
