#include <stdio.h>
#include <malloc.h>



typedef int Element;

typedef struct DLNode {
    Element data;
    struct DLNode * prior;
    struct DLNode * next;
} DLNode, *DLinkList;

// 头插法
DLinkList CreatListL(int a[],int n);
// 尾插法
DLinkList CreatListR(int a[],int n);
//输出表
void Display(DLinkList DL);
// 插入 到第 i
void InsertElement(DLinkList DL,int i,int e);
// 删除 i索引的元素
void deleteElement(DLinkList DL,int i);
// 修改 i
void modifElement(DLinkList DL,int i,int e);
// 求表长
int getLength(DLinkList DL);

int main() {

    int a[10] = {1,2,3,4,5,6,7,8,9,10};

    DLinkList DL = CreatListR(a,10);
    Display(DL);
    printf("\n");

    InsertElement(DL,5,60);
    Display(DL);
    printf("\n");
    deleteElement(DL,7);
    Display(DL);
    printf("\n");
    modifElement(DL,5,59);
    Display(DL);

    printf("\n表的长度 ： %d", getLength(DL));
    return 0;
}
// 求表长
int getLength(DLinkList DL){
    DLNode *p = DL;
    int i = 0;
    while (p->next!=NULL){
        i++;
        p = p->next;
    }
    return i;
}
// 修改 i
void modifElement(DLinkList DL,int i,int e){
    DLNode * p = DL;
    for (int j = 0; p->next != NULL; ++j) {
        if(j == i){
            p->data = e;
            break;
        }
        p = p->next;
    }
}

// 删除 i索引的元素
void deleteElement(DLinkList DL,int i){
    DLinkList p = DL;

    for (int j = 0; p->next!=NULL; ++j) {
        if(j == i-1){
            DLNode *s = p->next;
            printf("\n%d\n",s->data);

            p->next->next->prior = p;
            p->next = p->next->next;
            free(s);
        }
        p = p->next;
    }
}
// 插入 到第 i
void InsertElement(DLinkList DL,int i,int e){
    DLNode * p = DL;


    for (int j = 0; p->next!=NULL; ++j) {
        if(j == i - 1){
            DLNode *s = (DLNode *)malloc(sizeof(DLNode));
            s->data = e;
            s->next = p->next;
            s->prior = p;
            p->next->prior = s;
            p->next = s;
            break;
        }
        p = p->next;
    }
}

//输出表
void Display(DLinkList DL){
    DLNode * p;
    p = DL->next;

    for (int i = 0; p!= NULL; ++i) {
        printf("%d ",p->data);
        p = p->next;
    }
}

// 头插法
DLinkList CreatListL(int a[],int n){
    DLinkList DL = (DLinkList)malloc(sizeof(DLNode));
    DL->next = NULL;
    DL->prior = NULL;

    DLNode * s;
    DLNode * p = DL;
    for (int i = 0; i < n; ++i) {
        s = (DLNode * )malloc(sizeof(DLinkList));
        s->data = a[i];

        s->next = p->next;
        if (p->next!=NULL){
            p->next->prior = s;
        }

        p->next = s;
        s->prior = p;
    }

    return p;
}

// 尾插法
DLinkList CreatListR(int a[],int n){

    DLinkList DL = (DLinkList)malloc(sizeof(DLNode));
    DL->next = NULL;
    DL->prior = NULL;


    DLNode * s;
    DLNode * p = DL;

    for (int i = 0; i < n; ++i) {
        s = (DLNode *)malloc(sizeof(DLinkList));
        s->data = a[i];

        p->next=s;
        s->prior=p; 	//将*s插入*r之后
        p=s;
    }
    p->next = NULL;
    return DL;
}