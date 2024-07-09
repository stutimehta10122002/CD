%option noyywrap
%{
    #include <stdio.h>
%}

%%

if|display|then|while|for|to {
    printf("\n%7s : Keyword", yytext);
}

int|float|double {
    printf("\n%7s : datatype", yytext);
}


[a-zA-Z_][a-zA-Z0-9]* {
    printf("\n%7s : Identifier", yytext);
}

[><=!]=? {
    printf("\n%7s : Relational Operator", yytext);
}

%%

int main() {
    yylex();
    return 0;
}
