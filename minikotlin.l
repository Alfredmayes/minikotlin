%{
  
   #include "tokens.h"
    int line = 1;
    int column = 0;
%}

%option noyywrap
%option yylineno

LETTER [a-zA-Z]
DIGIT [0-9]


%%

"+" {return TK_PLUS;}  
"-" {return TK_MINUS;}
"*" {return TK_MULTIPLICATION;}
"/" {return TK_DIVISION;}
"%" {return TK_MOD;}
"=" {return TK_EQUAL;}
"++" {return TK_INCREMENT;}
"--" {return TK_DECREMENT;}
"&&" {return TK_LOGICAL_AND;}
"!" {return TK_NOT;}
"||" {return TK_LOGICAL_OR;}
"==" {return TK_EQ;}
"!=" {return TK_DISTINCT;}
">" {return TK_GREATER_THAN;}
"<" {return TK_LESS_THAN;}
">=" {return TK_GREATER_EQ_THAN;}
"<=" {return TK_LESS_EQ_THAN;}
"[" {return TK_BRACKET_OPEN;}
"]" {return TK_BRACKET_CLOSE;}
".." {return TK_OP_RANGE;} 
";" {return TK_COLON;}

"break" {return KW_BREAK;}
"do" {return KW_DO;}
"else" {return KW_ELSE;}
"false" {return KW_FALSE;}
"for" {return KW_FOR;}
"fun" {return KW_FUN; }
"if" {return KW_IF;}
"in" { return KW_IN;}
"return" {return KW_RETURN;}
"true" {return KW_TRUE;}
"var" {return KW_VAR;}
{LETTER}({DIGIT}|{LETTER}|_)* {return TK_ID;}

. {printf("caracter invalido %c en la linea: %d\n", yytext[0], yylineno);}
%%

 