#include <stdio.h>

int main() {
//    char a = 30;
//    a = 2 * a - 1;
//    printf("%c\n",a);
//    printf("%d\n",a);
//
//    char * s = "123456";
//
//    int i = 0;
//    for (i = 0; i < 3; ++i) {
//        puts(s++);
//    }
//
//    int k = 0;
//    while (++k < 10);
//    printf("%d",k);

    int a = 10,x = 15;

    a = (x=1,x++,x+2);
    printf("%d",a);
    return 0;
}
