#include<stdio.h>
#include<stdlib.h>

#define MaxSize 50

typedef struct BiTNode {
    char data;
    struct BiTNode *lchild;
    struct BiTNode *rchild;
} BiTNode, *BiTree;

void PreOrderTraverse(BiTree T);

void InOrderTraverse(BiTree T);

void PostOrderTraverse(BiTree T);

void LevelTraversal(BiTree b);

void CreateBiTree(BiTree *T);


/*
 * ABDG##H###CE#I##F##
 */

int main() {
    BiTree T;
    CreateBiTree(&T);

    PreOrderTraverse(T);
    printf("\n");
    InOrderTraverse(T);
    printf("\n");
    PostOrderTraverse(T);
    printf("\n");
    LevelTraversal(T);

    return 0;
}

void PreOrderTraverse(BiTree T)             //二叉树的先序遍历
{
    if (T == NULL)
        return;
    printf("%c ", T->data);
    PreOrderTraverse(T->lchild);
    PreOrderTraverse(T->rchild);
}
void InOrderTraverse(BiTree T)              //二叉树的中序遍历
{
    if (T == NULL)
        return;
    InOrderTraverse(T->lchild);
    printf("%c ", T->data);
    InOrderTraverse(T->rchild);
}
void PostOrderTraverse(BiTree T)            //后序遍历
{
    if (T == NULL)
        return;
    PostOrderTraverse(T->lchild);
    PostOrderTraverse(T->rchild);
    printf("%c ", T->data);
}
void LevelTraversal(BiTree b)
{
    if(b)
    {
        //定义队列
        BiTNode * queue[MaxSize];
        int top=0;
        queue[top] = b;

        int i = 0;

        //只要队列里有元素
        while(i<=top)
        {
            //将左右子树加入队列
            if(queue[i]->lchild)
            {
                top++;
                queue[top] = queue[i]->lchild;
            }
            if(queue[i]->rchild)
            {
                top++;
                queue[top] = queue[i]->rchild;
            }
            i++;
        }

        //现在这个队列按层次顺序容纳了二叉树的每个节点
        for(i=0;i<=top;i++)
        {
            //挨个打出来即可
            printf("%c ", queue[i]->data);
        }
        //我比较懒所以就没写出队，这其实当成个栈也可以
    }
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
