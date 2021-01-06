#include<stdio.h>
void main()
{
int a = 72;
int b = 48;
int flag = 0; 
int c;
c = a + b;
if(c >= 100) {
	flag = 1;
} else
{
	 flag = 0;
}
printf("Sum is %d\n",c);
if(flag == 1) {
	printf("Sum above 100");
} else {
	printf("Sum below 100");
}

}