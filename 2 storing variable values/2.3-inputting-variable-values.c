// Page 24, 2 Storing Variable Values

#include <stdio.h>

int main()
{
    char letter;
    int num1, num2;

    printf("Enter any one keyboard character: ");
    scanf("%c", &letter);
    printf("Enter two integers separated with space: ");
    scanf("%d %d", &num1, &num2);

    printf("Numbers input: %d and %d \n", num1, num2);
    printf("Letter input: %c", letter);
    printf("Stored at: %p \n", &letter);

    return 0;
}