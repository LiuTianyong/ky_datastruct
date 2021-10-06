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

void QuickSort(int *arr, int low, int high)
{
    if (low < high)
    {
        int i = low;
        int j = high;
        int k = arr[low];
        while (i < j)
        {
            while(i < j && arr[j] >= k)     // ���������ҵ�һ��С��k����
            {
                j--;
            }

            if(i < j)
            {
                arr[i++] = arr[j];
            }

            while(i < j && arr[i] < k)      // ���������ҵ�һ�����ڵ���k����
            {
                i++;
            }

            if(i < j)
            {
                arr[j--] = arr[i];
            }
        }

        arr[i] = k;

        // �ݹ����
        QuickSort(arr, low, i - 1);     // ����k���
        QuickSort(arr, i + 1, high);    // ����k�ұ�
    }
}

// ������
int main()
{
    int array[Max_Size] = {99,85,25,16,34,23,49,95,17,61};
    int maxlen = Max_Size;

    printf("����ǰ������\n");
    display(array, maxlen);

    QuickSort(array, 0, maxlen-1);  // ��������

    printf("����������\n");
    display(array, maxlen);

    return 0;
}