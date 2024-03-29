#include <stdio.h>
#include <stdlib.h>


typedef int Element;

typedef struct LNode {
    Element data;
    struct LNode *next;
} LNode, *LinkList;

// 头插法
LinkList createListL(int a[], int n);

// 尾插法
LinkList createListR(int a[], int n);

// 输出表
void Display(LinkList L);

// 查找第 i 个节点
LinkList getElement(LinkList L, int i);

// 插入节点 到第i处
void InsertElement(LinkList L, int i, int e);

// 修改节点值
void modifIndex(LinkList L, int i, int e);

// 删除第i个值
void deleteIndex(LinkList L, int i);

// 表的长度
int getLength(LinkList L);

// 原地逆序
LinkList reverseLink(LinkList L);

int main() {

    Element a[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
//    for (int i = 0; i < 10; ++i) {
//        printf("%d ", a[i]);
//    }
//    printf("\n数组初始化完成\n");
//    LinkList L = createListL(a, 10);
    LinkList L = createListR(a, 10);
    Display(L);
    printf("\n");
    L = reverseLink(L);
    Display(L);

    printf("\n");

    int n = 2;
    LinkList s = getElement(L,n);
    printf("找到第%d个节点,值为%d\n",n,s->data);

    InsertElement(L,1,50);
    Display(L);
    printf("\n");

    modifIndex(L,5,90);
    Display(L);
    printf("\n");

    deleteIndex(L,5);
    Display(L);
    printf("\n");

    printf("表的长度：%d\n", getLength(L));
    return 0;
}

// 原地逆序
LinkList reverseLink(LinkList L) {

    LinkList pre, next;

    LNode *p = L->next;         //当前节点
    pre = NULL;                 //前一结点
    next = p->next;             //下一节点

    while (p) {
        p->next = pre;
        pre = p;
        p = next;
        if (p) {
            next = p->next;
        }
    }
    L->next = pre;        //连入头节点
    return L;
}

// 表的长度
int getLength(LinkList L) {
    LNode *p = L;
    int i;
    for (i = 0; p->next != NULL; ++i) {
        p = p->next;
    }
    return i;
}

// 删除第i个值
void deleteIndex(LinkList L, int i) {

    if (i > getLength(L) || i <= 0) {
        printf("索引不合法\n");
        return;
    }
    LinkList p = L;
    LNode *q;
    for (int j = 0; p->next != NULL; ++j) {
        if (j == i - 1) {
//            printf("\n%d\n",p->data);
            q = p->next;
            p->next = q->next;
            free(q);
            break;
        }
        p = p->next;
    }
}

// 修改节点值
void modifIndex(LinkList L, int i, int e) {
    if (i > getLength(L) || i <= 0) {
        printf("索引不合法\n");
        return;
    }

    LinkList p = L;

    for (int j = 0; p->next != NULL; ++j) {
        if (j == i) {
            p->data = e;
            break;
        }
        p = p->next;
    }
}

// 插入节点 到第i处
void InsertElement(LinkList L, int i, int e) {
    if (i > getLength(L) || i <= 0) {
        printf("索引不合法\n");
        return;
    }

    LinkList p = L;

    for (int j = 0; p->next != NULL; ++j) {
        if (j == i - 1) {
//            printf("找到第%d个节点,值为%d\n",j,p->data);
            LNode *s = (LNode *) malloc(sizeof(LNode));
            s->data = e;
            s->next = p->next;
            p->next = s;
            break;
        }
        p = p->next;
    }
}

// 查找第 i 个节点
LinkList getElement(LinkList L, int i) {
    if (i > getLength(L) || i <= 0) {
        printf("索引不合法\n");
        return NULL;
    }
    LinkList p = L;
    for (int j = 0; p->next != NULL; j++) {
        if (j == i) {
//            printf("找到第%d个节点,值为%d",n,p->data);
            break;
        }
        p = p->next;
    }
    return p;
}

// 头插法
LinkList createListL(int a[], int n) {
    LinkList L = (LinkList) malloc(sizeof(LNode));
    L->next = NULL;
    LNode *s;
    for (int i = 0; i < n; ++i) {
        s = (LNode *) malloc(sizeof(LNode));
        s->data = a[i];
        s->next = L->next;
        L->next = s;
    }
    return L;
}

// 尾插法
LinkList createListR(int a[], int n) {
    LinkList L = (LinkList) malloc(sizeof(LNode));
    LNode *s;
    LNode *p = L;
    L->next = NULL;

    for (int i = 0; i < n; ++i) {
        s = (LNode *) malloc(sizeof(LNode));
        s->data = a[i];
        p->next = s;
        p = s;
    }
    p->next = NULL;
    return L;
}

void Display(LinkList L) {
    if (L->next == NULL) {
        printf("链表为空");
        return;
    }

    LinkList P = L->next;
    while (P != NULL) {
        printf("%d ", P->data);
        P = P->next;
    }
}