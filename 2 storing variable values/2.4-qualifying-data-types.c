// Page 26, 2 Storing Variable Values
/* short int num1;    --Saves memory space
long int num2;        --Allows bigger range */

#include <stdio.h>
#include <limits.h>

int main()
{
    printf("short int... \tsize: %d bytes \t", sizeof(short int));
    printf("%d to %d \n", SHRT_MAX, SHRT_MIN);

    printf("long int... \tsize: %d bytes \t", sizeof(long int));
    printf("%d to %d \n", LONG_MAX, LONG_MIN);

    printf("char... \tsize: %d bytes \t", sizeof(char));
    printf("float... \tsize: %d bytes \t", sizeof(float));
    printf("double... \tsize: %d bytes \t", sizeof(double));
}