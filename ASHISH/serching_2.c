#include<stdio.h>
void sreach2()
{
    int i,n,a[120],value;

    printf("\nEnter N : ");
    scanf("%d",&n);
    
    for(i=1;i<=n;i++)
    {
        printf("\nA[%d] : ",i);
        scanf("%d",&a[i]);
    }

    printf("\nEnter your search value no. : ");
    scanf("%d",&value);

    for(i=1;i<=n;i++)
    {
        if(a[i]==value)
        {
            printf("A[%d] : %d",i,a[i]);
            break;
        }
    }

}
void main()
{
    sreach2();    
}