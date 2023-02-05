#include<ctype.h>

char input[10];
int i,error;

void E();
void F();

main()
{
i=0;
error=0;
printf("Enter an arithmetic expression : ");
scanf("%s",input);
E();
if(strlen(input)==i && error==0)
printf("\nAccepted..!!!\n");
else
printf("\nRejected..!!!\n");
}

void E()
{
F();
if(input[i]=='+')
{
i++;
E();
}
}

void F()
{
if(isalnum(input[i]))
i++;
else if(input[i]=='(')
{
i++;
E();
if(input[i]==')')
i++;
else
error=1;
}
else
error=1;
}