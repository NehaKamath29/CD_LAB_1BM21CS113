#include <stdio.h>

char input[100];  
int ind = 0;

void match(char expected) {
    if (input[ind] == expected) {
        ind++;
    } 
}

void A();

void S() {
    match('c');
    A();
    match('d');
}

void A() {
    if (input[ind] == 'a') {
        match('a');
        match('b');
    } else if (input[ind] == 'a') {
        match('a');
    } else {
        printf("Parsing failed. Expected 'a' or 'a' at position %d.\n", ind);
        
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
