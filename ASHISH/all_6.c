#include <stdio.h>
#include <conio.h>
int a[120], n, i, key, value;
int first_insert()
{
    printf("\n\n --------------------first insert -----------------------\n\n");
    for (i = n; i > 0; i--)
    {
        a[i] = a[i - 1];
    }
    a[0] = 1000;
    n += 1;
    for (i = 0; i < n; i++)
    {
        printf("\nA[%d] : %d", i, a[i]);
    }
}
int last_insert()
{
    printf("\n\n --------------------last insert -----------------------\n\n");
    n += 1;
    a[n - 1] = 1000;
    for (i = 0; i < n; i++)
    {
        printf("\nA[%d] : %d", i, a[i]);
    }
}
int user_insert()
{
    printf("\n\n --------------------User insert -----------------------\n\n");
    printf("\nEnter Key : ");
    scanf("%d", &key);
    printf("\nEnter value : ");
    scanf("%d", &value);
    for (i = n; i >= key; i--)
    {
        a[i + 1] = a[i];
    }
    a[key] = value;
    for (i = 0; i < n + 1; i++)
    {
        printf("\nA[%d] : %d", i, a[i]);
    }
}
int user_delete()
{
    printf("\n\n --------------------User Delete -----------------------\n\n");
    printf("\nEnter Delete key : ");
    scanf("%d", &key);
    for (i = key; i < n; i++)
    {
        a[i] = a[i + 1];
    }
    for (i = 0; i < n - 1; i++)
    {
        printf("\nA[%d] : %d", i, a[i]);
    }
}
int first_delete()
{
    printf("\n\n --------------------First Delete -----------------------\n\n");
    for (i = 0; i < n; i++)
    {
        a[i] = a[i + 1];
    }
    for (i = 0; i < n - 1; i++)
    {
        printf("\nA[%d] : %d", i, a[i]);
    }
}
int last_delete()
{
    printf("\n\n -------------------- last delete -----------------------\n\n");
    for (i = 0; i < n - 1; i++)
    {
        printf("\nA[%d] : %d", i, a[i]);
    }
}
int searchValue()
{
    printf("\n--------------------- Search Value -----------------\n");

    printf("\nEnter your search value no. : ");
    scanf("%d", &value);

    for (i = 1; i <= n; i++)
    {
        if (a[i] == value)
        {
            printf("A[%d] : %d", i, a[i]);
            break;
        }
    }
}
int searchIndex()
{
    printf("\n--------------------- Search Value -----------------\n");
    printf("\nEnter Search Index key : ");
    scanf("%d", &key);

    printf("A[%d] : %d", key, a[key]);
}
int main()
{
    int ch;
    printf("\nEnter N : ");
    scanf("%d", &n);

    for (i = 0; i < n; i++)
    {
        printf("\nA[%d] : ", i);
        scanf("%d", &a[i]);
    }

    do
    {
        printf("\n\n\nSelect: \n\t1).First_insert \n\t2).last_insert \n\t3).User_insert \n\t4).User_Delete \n\t5).First_delete \n\t6).Last_delete \n\t7).Search_Value \n\t8).Search_Index  \n\t9).Exit\n");
        printf("\nSelect Number For Case \t::-- ");
        scanf("%d", &ch);
        switch (ch)
        {
        case 1:
            first_insert();
            break;
        case 2:
            last_insert();
            break;
        case 3:
            user_insert();
            break;
        case 4:
            user_delete();
            break;
        case 5:
            first_delete();
            break;
        case 6:
            last_delete();
            break;
        case 7:
            searchValue();
            break;
        case 8:
            searchIndex();
            break;
        default:
            printf("error");
        }
    } while (ch != 9);
}