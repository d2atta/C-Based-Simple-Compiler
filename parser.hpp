/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

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

#ifndef YY_YY_PARSER_HPP_INCLUDED
# define YY_YY_PARSER_HPP_INCLUDED
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
    K_int = 258,
    K_char = 259,
    K_return = 260,
    K_read = 261,
    K_write = 262,
    K_writeln = 263,
    K_break = 264,
    K_if = 265,
    K_else = 266,
    K_while = 267,
    ID = 268,
    INT = 269,
    DOUBLE = 270,
    EQ = 271,
    Uop_NOT = 272,
    Bop_PLUS = 273,
    Bop_MINUS = 274,
    Bop_MUL = 275,
    Bop_DIV = 276,
    Bop_EQ = 277,
    Bop_NEQ = 278,
    Bop_LT = 279,
    Bop_LE = 280,
    Bop_GT = 281,
    Bop_GE = 282,
    Bop_OR = 283,
    Bop_AND = 284,
    BRACE_RSQ = 285,
    BRACE_LSQ = 286,
    BRACE_RCUR = 287,
    BRACE_LCUR = 288,
    BRACE_RCUV = 289,
    BRACE_LCUV = 290,
    End_Delimeter = 291
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

#endif /* !YY_YY_PARSER_HPP_INCLUDED  */
