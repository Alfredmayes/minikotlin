%{
    #include <cstdio>
    #include <iostream>
    extern int yylineno;
    int yylex();
    void yyerror(const char * message){
        fprintf(stderr, "Error: %s in line: %d", message, yylineno);
    }
%}


%token KW_BREAK KW_IF KW_ELSE KW_TRUE KW_FALSE KW_FUN KW_DO KW_FOR KW_RETURN KW_IN KW_PRINTLN
%token KW_VAR KW_INT KW_FLOAT KW_BOOLEAN KW_STRING KW_ARRAY KW_WHILE TK_ID TK_NUMBER KW_CHAR
%token TK_LOGIC_AND TK_LOGIC_OR TK_LOGIC_EQ TK_LOGIC_NOT_EQ TK_GT_OR_EQ TK_LS_OR_EQ  TK_RANGE TK_INCREMENT TK_DECREMENT
%token TK_PAR_OPEN TK_PAR_CLOSE TK_COMILLA TK_STRING_LT TK_COMMENT_LN


%%

program: declarations block
        | block	
        ;

block : '{' statements '}'
       ;


declarations:  statements
            |/*epsilon*/
            ;


statements: statements statement
          | statement
          ;

statement:  KW_VAR TK_ID ':' type '=' statement 
          | KW_VAR TK_ID ':' type
          | KW_VAR TK_ID '=' statement
          | TK_ID '=' statement
          | KW_VAR TK_ID 
          | KW_FUN TK_ID TK_PAR_OPEN param_list TK_PAR_CLOSE '{'statements'}'   
          | KW_FUN TK_ID TK_PAR_OPEN param_list TK_PAR_CLOSE ';'
          | TK_ID TK_PAR_OPEN param_list TK_PAR_CLOSE
          | KW_FOR TK_PAR_OPEN expression_list TK_PAR_CLOSE  statements
          | KW_IF TK_PAR_OPEN expression_list TK_PAR_CLOSE '{' statements '}' KW_ELSE '{' statements '}'
          | KW_IF TK_PAR_OPEN expression_list TK_PAR_CLOSE '{' statements '}'
          | KW_DO '{' statements '}' KW_WHILE TK_PAR_OPEN expression_list TK_PAR_CLOSE
          | KW_WHILE TK_PAR_OPEN expression_list TK_PAR_CLOSE  statements
          | KW_PRINTLN TK_PAR_OPEN statement TK_PAR_CLOSE
          | expression_list 
          ;

type:	KW_INT 
        | KW_FLOAT
        | KW_CHAR
        | KW_BOOLEAN
        | KW_STRING
        | KW_ARRAY
        ;

param_list: param_list param
          | param_list ',' param
          | param			
          ;

param: statement
      | term 
      | /*vacio*/
      ;

expression_list: expression_list expression_logical
                | expression_logical
                ;

expression_logical: expression TK_LOGIC_AND  expression
                  | expression TK_LOGIC_OR expression
                  | expression TK_LOGIC_EQ expression
                  | expression TK_LOGIC_NOT_EQ expression
                  | expression TK_GT_OR_EQ expression
                  | expression TK_LS_OR_EQ expression
                  | expression '>' expression
                  | expression '<' expression
                  | expression
                  ;


expression:  expression '-' factor
            | expression '+' factor
            | expression '*' factor
            | expression '/' factor
            | factor
            ;

factor: term TK_INCREMENT
      | term TK_DECREMENT
      | factor '%' term
      | term
      ;

term: TK_ID
    | TK_NUMBER
    | TK_STRING_LT
    | TK_COMMENT_LN
    ;



%%

