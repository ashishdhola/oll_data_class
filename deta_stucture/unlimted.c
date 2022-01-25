#include <stdio.h>
#include <stdlib.h>
int Choose()
{
    long a[100000], n, i;
    printf("enter Array:");
    scanf("%lu", &n);
    for (i = 0; i < n; i++)
    {
        a[i] = rand() % 100;
        printf("\t%lu", a[i]);
    }
}
int main()
{
    Choose();
}