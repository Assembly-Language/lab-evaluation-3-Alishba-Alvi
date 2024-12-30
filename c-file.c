#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall SumNegative(int *arr, int count, int *sum); // Declaration of SumNegative

#ifdef __cplusplus
}
#endif

int main() {
    system("cls"); 
    int sum = 0;  // Initialize the sum
    int arr[] = {3, -5, 7, -2, -8, 10};  
    int size = sizeof(arr) / sizeof(arr[0]);
    // Call the assembly function to calculate the sum of negative numbers
    SumNegative(arr, size, &sum);
    // Display the result
    printf("The sum of negative numbers is: %d\n", sum);
    getch();

    return 0;
}
