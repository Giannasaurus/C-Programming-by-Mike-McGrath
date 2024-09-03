// Page 30, 2 Storing Variable Values

#include <stdio.h>

int main()
{
    register int num = 0;

    while (num < 5)
    {
        ++num;
        printf("Pass %d \n", num);

        return 0;
    }
}