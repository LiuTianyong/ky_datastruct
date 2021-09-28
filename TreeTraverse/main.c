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

int Treeheight(BiTNode *T);

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

    printf("\n������� ��%d ", Treeheight(T));
    return 0;
}

int Treeheight(BiTNode *T){
    int LD, RD;
    if(T == NULL)
    {
        return 0;
    }
    else
    {
        LD = Treeheight(T->lchild);
        RD = Treeheight(T->rchild);
        return (LD >= RD? LD:RD) + 1;
    }
}

void PreOrderTraverse(BiTree T)             //���������������
{
    if (T == NULL)
        return;
    printf("%c ", T->data);
    PreOrderTraverse(T->lchild);
    PreOrderTraverse(T->rchild);
}

void InOrderTraverse(BiTree T)              //���������������
{
    if (T == NULL)
        return;
    InOrderTraverse(T->lchild);
    printf("%c ", T->data);
    InOrderTraverse(T->rchild);
}

void PostOrderTraverse(BiTree T)            //�������
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
        //�������
        BiTNode * queue[MaxSize];
        int top=0;
        queue[top] = b;

        int i = 0;

        //ֻҪ��������Ԫ��
        while(i<=top)
        {
            //�����������������
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

        //����������а����˳�������˶�������ÿ���ڵ�
        for(i=0;i<=top;i++)
        {
            //�������������
            printf("%c ", queue[i]->data);
        }
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
