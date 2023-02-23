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
    KW_BREAK = 258,
    KW_IF = 259,
    KW_ELSE = 260,
    KW_TRUE = 261,
    KW_FALSE = 262,
    KW_FUN = 263,
    KW_DO = 264,
    KW_FOR = 265,
    KW_RETURN = 266,
    KW_IN = 267,
    KW_PRINTLN = 268,
    KW_VAR = 269,
    KW_INT = 270,
    KW_FLOAT = 271,
    KW_BOOLEAN = 272,
    KW_STRING = 273,
    KW_ARRAY = 274,
    KW_WHILE = 275,
    TK_ID = 276,
    TK_NUMBER = 277,
    KW_CHAR = 278,
    TK_LOGIC_AND = 279,
    TK_LOGIC_OR = 280,
    TK_LOGIC_EQ = 281,
    TK_LOGIC_NOT_EQ = 282,
    TK_GT_OR_EQ = 283,
    TK_LS_OR_EQ = 284,
    TK_RANGE = 285,
    TK_INCREMENT = 286,
    TK_DECREMENT = 287,
    TK_PAR_OPEN = 288,
    TK_PAR_CLOSE = 289,
    TK_COMILLA = 290,
    TK_STRING_LT = 291,
    TK_COMMENT_LN = 292
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
