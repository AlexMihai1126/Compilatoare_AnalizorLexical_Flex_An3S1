#include <stdio.h>

int main() {
    int num1 = 10;
    int num2 = 20;
    int sum;

    int id1 = 5;

    sum = num1 + num2;

    if (sum > 15 && id1 == 5) {
        printf("Sum is greater than 15\n");
        id1++;
    } else {
        printf("Sum is not greater than 15\n");
        if(id1 != 5){
            for(int i=0;i<10;i++){
                printf("A");
            }
        }
    }

    return 0;
}