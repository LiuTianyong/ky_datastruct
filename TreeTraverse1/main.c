#include<stdio.h>
#include<stdlib.h>

#define MaxSize 50

typedef struct BiTNode {
    int data;
    struct BiTNode *lchild;
    struct BiTNode *rchild;
} BiTNode, *BiTree;

void CreateBiTree(BiTree *T);



int main() {

    return 0;
}



void CreateBiTree(BiTree *T) {
    int e;
    scanf("%d", &e);
    if (e == '#')
        *T = NULL;
    else {
        *T = (BiTree) malloc(sizeof(BiTNode));
        if (!*T)
            exit(-1);
        (*T)->data = e;
        CreateBiTree(&(*T)->lchild);
        CreateBiTree(&(*T)->rchild);
    }
}
