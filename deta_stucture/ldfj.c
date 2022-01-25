#include <stdio.h>
#include <stdlib.h>
int main(void)
{
    int i, n, arr[10000];
    printf("\n Enter the Array Size= ");
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        arr[i] = rand() % (100 - 50 + 1) + 50;
        printf("\n %d", arr[i]);
    }
    return 0;
}