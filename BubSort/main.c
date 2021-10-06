#include <stdio.h>
#include <stdlib.h>

#define Max_Size 10

void display(int array[], int maxlen)
{
    int i;

    for(i = 0; i < maxlen; i++)
    {
        printf("%-3d", array[i]);
    }
    printf("\n");

}

void BubSort(int *arr,int n)
{
    for (int i=0; i<n-1; ++i)
    {
        for (int j=0; j<n-1-i; ++j)
        {
            if (arr[j] > arr[j+1])          // 默认从小到大  如果要求从大到小  改成< 号即可
            {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

// 主函数
int main()
{
    int array[Max_Size] = {99,85,25,16,34,23,49,95,17,61};
    int maxlen = Max_Size;

    printf("排序前的数组\n");
    display(array, maxlen);

    BubSort(array,Max_Size);


    printf("排序后的数组\n");
    display(array, maxlen);

    return 0;
}