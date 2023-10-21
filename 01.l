/* Number of characters count and number of lines count. */

%{
#include<stdio.h>
int c =0;
int n1=0;
%}


%%
[a-z,A-Z] {c++;}
\t;
\n {n1++;}
. ;
%%

int yywrap()
{
return 1;
}
int main()
{
printf("Enter the string:");
yylex();

printf("\n Number of word:%d \nNumber of Lines \t%d",c,n1);
}
