#include <cstdio>               // printf

#include "header.h"

int main(int argc, char **argv)
{
    myClass x;
    int y;

    x.set(5);

    y = x.get();

    printf("now we have %d\n", y);

    return 0;
}
