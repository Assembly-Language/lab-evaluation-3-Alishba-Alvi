#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall SumNegative(int arr, int count,int sum);

#ifdef __cplusplus
}
#endif

int main() {
    system("cls");
    int sum = 0;
    int arr[] = {3, -5, 7, -2, -8, 10};  // Input array
    int size = sizeof(arr) / sizeof(arr[0]);
    // Call the assembly function to calculate the sum of negative numbers
    int sum = SumNegative(arr, size,&sum);
    // Display the result
    printf("The sum of negative numbers is: %d\n", sum);
    // Add a pause to see the result
    system("pause");
    return 0;
}