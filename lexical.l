%{
	#include<stdio.h>
	#include<string.h>
	#include "parser.hpp"
	extern "C" int yywrap() { }
%}

%%
[ \t\n]                 		;
"int" 							return K_int; 
"char" 							return K_char; 
"return" 						return K_return; 
"read" 							return K_read; 
"write" 						return K_write; 
"writeln" 						return K_writeln; 
"break" 						return K_break; 
"if" 							return K_if; 
"else" 							return K_else; 
"while" 						return K_while; 								
[a-zA-Z_][a-zA-Z0-9_]*          { yylval.string = new std::string(yytext, yyleng); return ID; }
[0-9]*							{ yylval.integer = atoi(yytext); return NUMBER; }
[0-9]*[.0-9]+					{ yylval.double = atoi(yytext); return DOUBLE; }
"!"                             return Uop_NOT;
"+"   							return Bop_PLUS;
"-"                       		return Bop_MINUS;
"*"								return Bop_MUL;
"/"								return Bop_DIV;
"="								return EQ;
"=="							return Bop_EQ;
"!="							return Bop_NEQ;
"<"								return Bop_LT;
"<="							return Bop_LE;
">"								return Bop_GT;
">="							return Bop_GE;
"|" 							return Bop_OR;
"&&"							return Bop_AND;
"]"								return BRACE_RSQ;
"["								return BRACE_LSQ;
"}"								return BRACE_RCUR;
"{"								return BRACE_LCUR;
")"								return BRACE_RCUV;
"("								return BRACE_LCUV;
";"								return End_Delimeter;
.							    printf("Unknown token"); yyterminate();
%%