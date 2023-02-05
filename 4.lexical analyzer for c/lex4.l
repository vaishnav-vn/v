%{ 
#include<stdio.h> 
%} 
letter [a-z A-Z]
digit [0-9] 
%%
{digit}+printf("\n%s\t is integer number",yytext); 

{digit}+"."{digit}+ printf("\n%s\t floating point number",yytext);

"if"|"else"|"for"|"while" printf("\n%s\t is a keyword",yytext);

{letter}({letter}|{digit})* printf("\n%s\t is an identifier",yytext);

"\a"|"\n"|"\t"|"\b" printf("\n%s\t is escape sequence",yytext);

 "+"|"-"|")"|"("|"}"|"{"|"]"|"["|"=" printf("\n%s\t is an operator",yytext); 

"%d"|"%s"|"%f"|"%c" printf("\n%s\t is formal specifier",yytext); 

"stdio.h"|"conio.h"|"math.h"|"string.h" printf("\n%s\t is an header",yytext); 

"#"|"@"|"%"|";"|","|"\"" printf("\n%s\t is a special character",yytext); 
%% 
int main(void) 
{ 
yyin = fopen("Sample.txt","r"); 
yylex(); 
}
