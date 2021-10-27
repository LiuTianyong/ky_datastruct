#include <stdio.h>
#include "stdlib.h"

#define MaxSize 100
#define Element int

typedef struct {
  Element data[MaxSize];
  int fornt,rear;
} *SqQueue;

void InitQueue(SqQueue Q){
    Q->rear = Q->fornt;
}

int isEmpty(SqQueue Q){
    if(Q->rear == Q->fornt){
        return 1;
    } else{
        return 0;
    }
}

int EnQueue(SqQueue Q,Element e){
    if((Q->rear+1) % MaxSize == Q->fornt){
        return 0;
    }
    Q->data[Q->rear] = e;
    Q->rear = (Q->rear+1) % MaxSize;
    return 1;
}

Element DeQueue(SqQueue Q){
    if(Q->rear == Q->fornt) return 0;
    Element e = Q->data[Q->fornt];
    Q->fornt = (Q->fornt+1) % MaxSize;
    return e;
}

int main() {
    SqQueue q = (SqQueue *)malloc(sizeof (SqQueue));
    EnQueue(q,288);
    EnQueue(q,35);
    EnQueue(q,98);
    EnQueue(q,383);

    Element e = DeQueue(q);
    printf("%d\n",e);

    int res = isEmpty(q);
    if (res){
        printf("为空");
    } else{
        printf("不为空");
    }

    return 0;
}
