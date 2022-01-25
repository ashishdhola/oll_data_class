#include <stdio.h>
#include <stdlib.h>
#define n 10

void printArray(int a[])
{
    printf("\n Array \n");
    for (int i = 0; i < n; i++)
        printf("%d  ", a[i]);
}

void bubble_sort(int arr[])
{
    int i, j, key;
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                key = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = key;
            }
        }
    }
    printArray(arr);
}
int main()
{
    int a[20], min = 20, max = 101;
    for (int i = 0; i < n; i++)
        a[i] = (rand() % (max - min + 1)) + min;
    printArray(a);
    bubble_sort(a);
    return 0;
}
