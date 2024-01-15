%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while"  { printf("KEYWORD: %s\n", yytext); }
[a-zA-Z_]+[a-zA-Z0-9_]* { printf("ID: %s\n", yytext); }
"0x"[0-9a-fA-F]+      { printf("HEX: %s\n", yytext); }
[0-9]+\.[0-9]+      { printf("FLOAT: %s\n", yytext); }
[0-9]+\.?[0-9]*[eE][+-]?[0-9]+ { printf("SCIENTIFIC: %s\n", yytext); }
[0-9]+              { printf("INT: %s\n", yytext); }
"+"                 { printf("Op aritmetic: %s\n", yytext); }
"-"                 { printf("Op aritmetic: %s\n", yytext); }
"/"                 { printf("Op aritmetic: %s\n", yytext); }
"*"                 { printf("Op aritmetic: %s\n", yytext); }
"++"                { printf("Op aritmetic: %s\n", yytext); }
"--"                { printf("Op aritmetic: %s\n", yytext); }
"%"                 { printf("Op aritmetic: %s\n", yytext); }
"||"                { printf("Op logic: %s\n", yytext); }
"&&"                { printf("Op logic: %s\n", yytext); }
"!"                 { printf("Op logic: %s\n", yytext); }
"&"                 { printf("Op pe biti: %s\n", yytext); }
"|"                 { printf("Op pe biti: %s\n", yytext); }
"^"                 { printf("Op pe biti: %s\n", yytext); }
"<<"                { printf("Op pe biti: %s\n", yytext); }
">>"                { printf("Op pe biti: %s\n", yytext); }
"~"                 { printf("Op pe biti: %s\n", yytext); }
"="                 { printf("Op de asignare: %s\n", yytext); }
"+="                { printf("Op de asignare: %s\n", yytext); }
"-="                { printf("Op de asignare: %s\n", yytext); }
"*="                { printf("Op de asignare: %s\n", yytext); }
"/="                { printf("Op de asignare: %s\n", yytext); }
"=="                { printf("Op relational: %s\n", yytext); }
"!="                { printf("Op relational: %s\n", yytext); }
">"                 { printf("Op relational: %s\n", yytext); }
"<"                 { printf("Op relational: %s\n", yytext); }
"<="                { printf("Op relational: %s\n", yytext); }
">="                { printf("Op relational: %s\n", yytext); }
"."                 { printf("Punct\n"); }
"("                 { printf("LPAREN\n"); }
")"                 { printf("RPAREN\n"); }
"{"                 { printf("LBRACE\n"); }
"}"                 { printf("RBRACE\n"); }
";"                 { printf("Final linie cod C\n"); }
","                 { printf("Virgula\n"); }
"]"                 { printf("RPAREN_SQ\n"); }
"["                { printf("LPAREN_SQ\n"); }
\"(\\.|[^"])*\" { printf("STR literal: %s\n", yytext); }

\'(\\.|[^'])*\' { printf("CHAR literal: %s\n", yytext); }

\/\/[^\n]*     { /* Ignora comentariile pe o linie // */ }
\/\*([^*]|\*+[^*/])*\*\/ { /* Ignora comentariile multilinie */ }

\#[^\n]*       { /* Ignora directiva preprocesare */ }

\n                  { /* Ignora caracterul newline */ }
[ \t]               { /* Ignora spatiile si taburile */ }
.                   { printf("Caracter necunoscut: %s\n", yytext); }

%%