/***** test endian ****/
#include<stdio.h>
int x=1;
#define TEST (*(char*)&(x)==1)?printf("little endian"):printf("Big endian")
int main()
{

    TEST;
 }
/**** end *******/
