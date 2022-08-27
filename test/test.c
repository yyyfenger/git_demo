#include <stdio.h>

void fixBug();

int main()
{
    printf("hello world\n");
    fixBug();
    return 1;
}

void fixBug()
{
    printf("fix bug\n");
}