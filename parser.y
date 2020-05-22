%{
        #include<stdio.h>
        extern char yylex();
        void yyerror(const char *s) 
        { 
        printf("ERROR: %sn", s); 
        }
%}

/*Represents the Terminals*/
%token K_int
%token K_char
%token K_return
%token K_read
%token K_write
%token K_writeln
%token K_break
%token K_if
%token K_else
%token K_while
%token ID
%token INT
%token DOUBLE
%token EQ
%token Uop_NOT
%token Bop_PLUS
%token Bop_MINUS
%token Bop_MUL
%token Bop_DIV
%token Bop_EQ
%token Bop_NEQ
%token Bop_LT
%token Bop_LE
%token Bop_GT
%token Bop_GE
%token Bop_OR
%token Bop_AND
%token BRACE_RSQ
%token BRACE_LSQ
%token BRACE_RCUR
%token BRACE_LCUR
%token BRACE_RCUV
%token BRACE_LCUV
%token End_Delimeter

%start Program

%%

Program:
        VarDeclList FunDeclList
       |;

VarDeclList:
         VarDecl ',' VarDeclList
        |;

VarDecl:
         Type ID
        |Type ID BRACE_LCUV K_int BRACE_RCUV
        ;

FunDeclList:
         FunDecl
        |FunDecl FunDeclList
        ;

FunDecl:
         Type ID BRACE_LCUV ParamDeclList BRACE_RCUV Block
        |;

ParamDeclList:
        ParamDeclListTail
        |/*Blank*/ ;

ParamDeclListTail:
         ParamDecl
        |ParamDecl ',' ParamDeclListTail
        ;

ParamDecl:
        Type ID
       |Type ID BRACE_LSQ BRACE_RSQ 
       ;

Block:
       BRACE_LCUR VarDeclList StmtList BRACE_RCUR
       ;

Type:
         K_int
        |K_char
        ;
    
StmtList:
        Stmt
        |Stmt StmtList
        ;

Stmt:
        Expr End_Delimeter K_return
        |Expr End_Delimeter K_read ID 
        |K_write Expr End_Delimeter
        |K_writeln End_Delimeter K_break
        |End_Delimeter 
        |K_if BRACE_LCUV Expr BRACE_RCUV Stmt K_else Stmt 
        |K_while BRACE_LCUV Expr BRACE_RCUV Stmt  
        |Block
        ;

Expr:
        Primary
        |UnaryOp Expr Expr
        |BinOp Expr ID EQ
        |Expr
        |ID BRACE_LSQ Expr BRACE_RSQ EQ Expr
        ; 

Primary:
        ID
        |K_int
        |BRACE_LCUV Expr BRACE_RCUV
        |ID BRACE_LCUV ExprList BRACE_RCUV
        |ID BRACE_LSQ Expr BRACE_RSQ
        ;

ExprList:
        |ExprListTail
        ;

ExprListTail:
         Expr
        |Expr ',' ExprListTail
        ;

UnaryOp:
        |Uop_NOT
        ;

BinOp: 
        |Bop_PLUS   
        |Bop_MINUS 
        |Bop_MUL    
        |Bop_DIV    
        |Bop_EQ     
        |Bop_NEQ    
        |Bop_LT     
        |Bop_LE     
        |Bop_GT     
        |Bop_GE     
        |Bop_AND    
        |Bop_OR     
        ;
%%
int main(void) {
 yyparse();
 return 0;
} 