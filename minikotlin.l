%{
   #include "tokens.h"
    int line = 1;
    int column = 0;
%}

%option noyywrap
%option yylineno

LETTER [a-zA-Z]
DIGIT [0-9]
COMMENT_BLOCK ["/*" ( {DIGIT} | {LETTER} | {\n} | {\r} | {\t} )*  "*/"]
COMMENT_LINE ["//" .* {\n}]
CADENA [{\"} ({DIGIT} | {LETTER} )* {\"} ] \" 

%%

"!" {return '!';}
">" {return '>';}
"<" {return '<';}
";" {return ';';}
"[" {return '[';}
"]" {return ']';}
"{" {return '{';}
"}" {return '}';}
"+" {return '+';}  
"-" {return '-';}
"*" {return '*';}
"//"+(.*)+[\n] {return TK_COMMENT_LN;} 
"/" {return '/';}
"%" {return '%';}
"=" {return '=';}
"," {return ',';}
":" {return ':';}
"." {return '.';}
"(" {return TK_PAR_OPEN;}
")" {return TK_PAR_CLOSE;}
[\"] {return TK_COMILLA;} 
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
"Int" {return KW_INT;}
"float" {return KW_FLOAT;}
"boolean" {return KW_BOOLEAN;}
"string" {return KW_STRING;}
"array" {return KW_ARRAY;}
"while" {return KW_WHILE;}
"println" {return KW_PRINTLN;}
\".*\" {return TK_STRING_LT;}
{LETTER}({DIGIT}|{LETTER}|_)* {return TK_ID;}
{DIGIT}+("."{DIGIT}+)* {return TK_NUMBER;}
"++" {return TK_INCREMENT;}
"--" {return TK_DECREMENT;}
"&&" {return TK_LOGIC_AND;}
"||" {return TK_LOGIC_OR;}
"==" {return TK_LOGIC_EQ;}
"!=" {return TK_LOGIC_NOT_EQ;}
">=" {return TK_GT_OR_EQ;}
"<=" {return TK_LS_OR_EQ;}
".." {return TK_RANGE;} 

[\n \r \t] {/*ignorar*/}
. {printf("caracter invalido %c en la linea: %d\n", yytext[0], yylineno);}
%%