%{
#include<stdio.h>
int c1=0, c2=0, lc=0, sc=0, tc=0, ch=0, sletters=0, cletters=0;
%}
%%
[A-Z] {cletters++;}
[a-z] {sletters++;}
[0-9]+ {c1++;}
-[0-9]+ {c2++;}
\n {lc++;}
[ ] {sc++;}
\t {tc++;}
. {ch++;}
%%
int main()
{
yyin=fopen("a.txt","r");
yylex();
printf("Total numbers : %d\n", c1+c2);
printf("no of small letters: %d\n", sletters);
printf("no of capital letters : %d\n", cletters);
printf("no of positive letters : %d\n", c1);
printf("no of negative letters : %d\n", c2);
printf("no of new lines : %d\n", lc);
printf("no of spaces : %d\n", sc);
printf("no of tabs : %d\n", tc);
printf("no of dots : %d\n", ch);
}
