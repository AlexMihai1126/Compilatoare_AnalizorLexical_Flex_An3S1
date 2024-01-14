#include <stdio.h>

int main() {
    int num1 = 10;
    int num2 = 20;
    int sum;

    // Lexical error: '3identifier' is not a valid identifier
    int 3identifier = 5;

    sum = num1 + num2;

    if (sum > 15) {
        printf("Sum is greater than 15\n");
    } else {
        printf("Sum is not greater than 15\n");
    }

    return 0;
}
