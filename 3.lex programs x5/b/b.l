%{
#include<stdio.h>
%}
%%
[a-z A-Z 0-9]*[/][/][a-z A-Z 0-9]* {printf("Single comment line");}
[a-z A-Z 0-9]*[/][*][a-z A-Z 0-9]* {printf("Starting of multiple comment line");}
[a-z A-Z 0-9]*[*][/][a-z A-Z 0-9]* {printf("Engding of multiple comment line");}
%%
int main(void)
{
yylex();
}
