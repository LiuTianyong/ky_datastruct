#include <stdio.h>


#define MaxSize 50

typedef int Element;

struct lineList{
    int length;
    Element data[MaxSize];
} SqList;

// 创建
void CreateList();
// 插入
void InsertList();
// 提取元素
Element getIndex();
// 删除
int deleteIndex();
int deleteElement();

int main() {
    int a[5] = {1,2,3,4,5};
    for (int i = 0; i < 5; ++i) {
        printf("%d\n",a[i]);
    }
    return 0;
}

// 创建
void CreateList(){

}
// 插入
void InsertList();
// 提取元素
Element getIndex();
// 删除
int deleteIndex();
int deleteElement();