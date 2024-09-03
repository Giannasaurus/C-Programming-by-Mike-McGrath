// Page 34, 2 Storing Variable Values

#include <stdio.h>

int main()
{
  int arr[3];

  arr[0] = 100;
  arr[1] = 200;
  arr[2] = 300;

  char str[10] = {'C', ' ', 'P', 'r', 'o', 'g', 'r', 'a', 'm', '\0'};
  /* when creating an array to hold a string,
  remember to allow space for an element at the end
  to contain the \0 null character. */

  printf("1st element value: %d \n", arr[0]);
  printf("2nd element value: %d \n", arr[1]);
  printf("3rd element value: %d \n", arr[2]);
  printf("String: %s \n", str);

  return 0;
}