#include <stdio.h>
#include "stdlib.h"

#define MaxSize 100
#define Element int

typedef struct stack{
    Element data[MaxSize];          // 栈元素的最大个数
    int top;        // 栈顶
} *SqStack,Stack;

void InitStack(SqStack s){
    s = (SqStack) malloc(sizeof(Stack));
    s->top = -1;
}

int StackEmpty(SqStack s){
    if(s->top == -1){
        return 1;        // 空栈
    } else{
        return 0;       // 不为空
    }
}

int PushStack(SqStack s,Element e){
    if(s->top == MaxSize - 1){
        return 0;
    }
    s->data[++s->top] =  e;
    return 1;
}

Element Pop(SqStack s){
    if(s->top == -1){
        return 0;
    }
    Element e = s->data[s->top--];
    return e;
}

Element getTop(SqStack s){
    if(s->top == -1){
        return 0;
    }
    Element e = s->data[s->top];
    return e;
}
int main() {
    SqStack s = (SqStack) malloc(sizeof(Stack));
    s->top = -1;
//    InitStack(s);
//    SqStack s = NULL;
    InitStack(s);
    PushStack(s,20);
    PushStack(s,30);
    PushStack(s,40);
    PushStack(s,50);
    Pop(s);
    PushStack(s,70);
    Pop(s);
    Element e = getTop(s);
    printf("%d",e);
    return 0;
}
