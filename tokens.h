/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_TOKENS_H_INCLUDED
# define YY_YY_TOKENS_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    TK_ID = 258,
    TK_NUMBER = 259,
    TK_INCREMENT = 260,
    TK_DECREMENT = 261,
    TK_LOGICAL_AND = 262,
    TK_NOT = 263,
    TK_LOGICAL_OR = 264,
    TK_EQ = 265,
    TK_DISTINCT = 266,
    TK_GREAT_EQ_THAN = 267,
    TK_LESS_EQ_THAN = 268,
    TK_OP_RANGE = 269,
    TK_LEFTPARENS = 270,
    TK_RIGHTPARENS = 271,
    KW_BREAK = 272,
    KW_DO = 273,
    KW_ELSE = 274,
    KW_FALSE = 275,
    KW_FOR = 276,
    KW_IF = 277,
    KW_IN = 278,
    KW_RETURN = 279,
    KW_TRUE = 280,
    KW_VAR = 281,
    KW_INT = 282,
    KW_FLOAT = 283,
    KW_BOOLEAN = 284,
    KW_STRING = 285,
    KW_ARRAY = 286,
    KW_FUN = 287,
    KW_WHILE = 288,
    TK_LEFTKEY = 289,
    TK_RIGHTKEY = 290,
    KW_CHAR = 291,
    TK_COMMENT_LINE = 292,
    TK_LIT_STRING = 293
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_TOKENS_H_INCLUDED  */
