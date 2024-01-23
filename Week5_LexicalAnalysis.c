#include <stdio.h>
#include <string.h>
#include <ctype.h>

void lexicalAnalyzer(char input_code[]) {
    char *keywords[] = {"if", "else", "while", "for", "return"};
    char *operators[] = {"+", "-", "*", "/", "=", "==", "<", ">", "<=", ">="};
    char *punctuations[] = {",", ";", "(", ")", "{", "}"};

    char *token = strtok(input_code, " \t\n");
    
    while (token != NULL) {
        if (isdigit(token[0])) {
            printf("Number: %s\n", token);
        } else if (isalpha(token[0]) || token[0] == '_') {
            int isKeyword = 0;
            for (int i = 0; i < sizeof(keywords) / sizeof(keywords[0]); i++) {
                if (strcmp(token, keywords[i]) == 0) {
                    printf("Keyword: %s\n", token);
                    isKeyword = 1;
                    break;
                }
            }
            if (!isKeyword) {
                printf("Identifier: %s\n", token);
            }
        } else if (strchr("+-*/=<>(){}[]", token[0]) != NULL) {
            printf("Operator: %s\n", token);
        }
        else if(strchr(",;", token[0]) != NULL)
        {
            printf("Punctuation:%s\n",token);
        }
        
        token = strtok(NULL, " \t\n");
    }
}

int main() {
    char input_code[] = "if ( x > 0 ) { return x ; } else { return -x ; }";
    lexicalAnalyzer(input_code);
    return 0;
}
