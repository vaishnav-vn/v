%{
#include<stdio.h>
%}
%%
[+]?[0-9]+ {printf("is a positive number");}

[-]?[0-9]+ {printf("is a negative number");}
%%

int yywrap()
{}

int main()
{
yylex();
}
