#include <stdio.h>


typedef struct Queue {

} Queue;

typedef struct Node {
    int data;
    struct Node*lchild,*rchild;
} * BiTree;

void EnQueue(Queue & q, BiTree p);
void InitQueue(Queue &q);
BiTree DeQueue(Queue &q);
int IsQueueEmpty(Queue &q);

int CountNumDegree1(BiTree T){

    int count = 0;
    Queue q;
    InitQueue(q);

    if(T == NULL){
        return 0;
    }
    BiTree temp;
    EnQueue(q,T);

    while (!IsQueueEmpty(q)){

        temp = DeQueue(q);
        if((temp->lchild==NULL && temp->rchild!=NULL)||(temp->rchild==NULL&& temp->lchild!=NULL)){
            count++;
        }


        if(temp->lchild!=NULL){
            EnQueue(q,temp->lchild);
        }
        if(temp->rchild!=NULL){
            EnQueue(q,temp->rchild);
        }

    }

    return count;
}

int CountNumDegree2(BiTree T){

    int count = 0;
    Queue q;
    InitQueue(q);

    if(T == NULL){
        return 0;
    }
    BiTree temp;
    EnQueue(q,T);

    while (!IsQueueEmpty(q)){

        temp = DeQueue(q);
        if(temp->rchild !=NULL && temp->lchild!=NULL){
            count++;
        }


        if(temp->lchild!=NULL){
            EnQueue(q,temp->lchild);
        }
        if(temp->rchild!=NULL){
            EnQueue(q,temp->rchild);
        }

    }

    return count;
}

// 叶子节点
int CountNumDegree0(BiTree T){

    int count = 0;
    Queue q;
    InitQueue(q);

    if(T == NULL){
        return 0;
    }
    BiTree temp;
    EnQueue(q,T);

    while (!IsQueueEmpty(q)){

        temp = DeQueue(q);
        if(temp->lchild == NULL&& temp->rchild == NULL){
            count++;
            continue;
        }


        if(temp->lchild!=NULL){
            EnQueue(q,temp->lchild);
        }
        if(temp->rchild!=NULL){
            EnQueue(q,temp->rchild);
        }

    }

    return count;
}

int main() {

    BiTree T;
    CountNumDegree0(T);
    CountNumDegree1(T);
    CountNumDegree2(T);
    return 0;
}
