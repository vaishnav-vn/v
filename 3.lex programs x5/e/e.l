%{
int vow=0;
int con=0;
%}
%%
[\t\n]+;
[aeiouAEIOU]+ {vow++;}
[^aeiouAEIOU] {con++;}
%%
int main()
{
yyin=fopen("a.txt","r");
yylex();
printf("Number of vowels are: %d\n",vow);
printf("Number of consonants are:%d\n",con);
return 0;
}

