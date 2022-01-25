// find in index
#include <stdio.h>
void sreach()
{
    int i, n, a[120], b;
    printf("Enter Value for Array:");
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        printf("\nA[%d] : ", i);
        scanf("%d", &a[i]);
    }
    printf("\nEnter the array index you want to find element=");
    scanf("%d", &b);

    printf("[%d]\t\t %d", b, a[b]);
}
int main()
{
    // first_insert();
    sreach();
}