#include <stdio.h>
#include <stdlib.h>

#define N 20

//二叉树结点的结构体表示形式
typedef struct BiTNode {
    char data;
    struct BiTNode *lchild;
    struct BiTNode *rchild;
} BiTNode, *BiTree;


// 前序
void PreOrder(BiTree T);
// 中序
void InOrder(BiTree T);
// 后续
void PostOrder(BiTree T);
// 二叉排序树逆序
void ReverseOrder(BiTree T);
// 构建二叉树
void CreateBiTree(BiTree *T);

int Treeheight(BiTree T);
/*
 * ABDG##H###CE#I##F##
 * 5421##3###86#7##9##
 */
int main() {
    printf("请以顺序输入二叉树(#表示该结点的子结点为空):\n");
    BiTree T;
    CreateBiTree(&T);
//    printf("前序遍历非递归实现：\n");
//    PreOrder(T);
//    printf("\n");
    printf("中序遍历非递归实现：\n");
    InOrder(T);
    printf("\n");
//    printf("后序遍历非递归实现：\n");
//    PostOrder(T);

    printf("二叉排序树的逆序：\n");
    ReverseOrder(T);
    return 0;
}

void CreateBiTree(BiTree *T) {
    char ch;
    scanf("%c", &ch);
    if (ch == '#')
        *T = NULL;
    else {
        *T = (BiTree) malloc(sizeof(BiTNode));
        if (!*T)
            exit(-1);
        (*T)->data = ch;
        CreateBiTree(&(*T)->lchild);
        CreateBiTree(&(*T)->rchild);
    }
}

void PreOrder(BiTree T) {
    if (T == NULL){
        return;
    }
    printf("%c ",T->data);
    PreOrder(T->lchild);
    PreOrder(T->rchild);
}

void InOrder(BiTree T) {
    if (T == NULL){
        return;
    }

    InOrder(T->lchild);
    printf("%c ",T->data);
    InOrder(T->rchild);
}

void PostOrder(BiTree T){
    if (T == NULL){
        return;
    }

    InOrder(T->lchild);
    InOrder(T->rchild);
    printf("%c ",T->data);
}

void ReverseOrder(BiTree T){
    if (T == NULL){
        return;
    }
    ReverseOrder(T->rchild);
    printf("%c ",T->data);
    ReverseOrder(T->lchild);

}