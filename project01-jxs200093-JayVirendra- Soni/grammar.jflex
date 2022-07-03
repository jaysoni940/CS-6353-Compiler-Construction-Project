import java_cup.runtime.*;

%%

%cup
%line
%column
%unicode
%public
%class lexer

%{

Symbol  newSym(int tokenId) {
	return new Symbol(tokenId, yyline, yycolumn);
}

Symbol  newSym(int tokenId, Object value) {
	return new Symbol(tokenId, yyline, yycolumn, value);
}

%}


// Pattern Definitions:

tab = \\t
newline = \\n
slash = \\
letter = [A-Za-z]
digit = [0-9]
id	= {letter}[{letter}{digit}]*
char = [^\\\n\t\"\']|\\.
string = {char}*

intliteral	= {digit}+
floatliteral = {intliteral}\.{intliteral}
charliteral = \'{char}\'
stringliteral = \"{string}\"
 
inline_cmt = {slash}{slash}.*\n
multiline_cmt = {slash}\*(\\[^\*]|[^\\])*\*{slash}
whitespace = [ \n\t\r]

%%

// Lexical Rules:

class 					{return newSym(sym.CLASS,		"class");}
final 					{return newSym(sym.FINAL,		"final"); }
void  					{return newSym(sym.VOID, 		"void");}
return                  {return newSym(sym.RETURN,      "return");}


int                     {return newSym(sym.INT,         "int");}
char                    {return newSym(sym.CHAR,        "char");}
string                  {return newSym(sym.STRING,      "string");}
bool                    {return newSym(sym.BOOL,        "bool");}
float                   {return newSym(sym.FLOAT,       "float");}

read		            { return newSym(sym.READ,       "read");}
print		            { return newSym(sym.PRINT,      "print");}
printline		        { return newSym(sym.PRINTLINE,  "printline");}

if                      {return newSym(sym.IF,          "if");}
else                    {return newSym(sym.ELSE,        "else");}
while                   {return newSym(sym.WHILE,       "while");}
true					{return newSym(sym.TRUE,        "true");}
false					{return newSym(sym.FALSE,       "false");}

"("                     {return newSym(sym.ROUND_OPEN,     "(");}
")"                     {return newSym(sym.ROUND_CLOSE,    ")");}
"{"                     {return newSym(sym.CURLY_OPEN,     "{");}
"}"                     {return newSym(sym.CURLY_CLOSE,    "}");}
"["                     {return newSym(sym.SQR_OPEN,       "[");}
"]"                     {return newSym(sym.SQR_CLOSE,      "]");}

";"                     {return newSym(sym.SEMICOLON,           ";");}
","                     {return newSym(sym.COMMA,          ",");}
"?"                     {return newSym(sym.QUESTION,       "?");}
":"                     {return newSym(sym.COLON,          ":");}
"~"                 	{return newSym(sym.NOT,            "~");}

"++"					{return newSym(sym.INCREMENT,         "++");}
"--"					{return newSym(sym.DECREMENT,         "--");}
"*"						{return newSym(sym.MULTIPLY,       "*");}
"/"						{return newSym(sym.DIVISION,         "/");}
"+"						{return newSym(sym.PLUS,        "+");}
"-"						{return newSym(sym.MINUS,       "-");}
"="                		{return newSym(sym.ASSIGNMENT, 	"="); }
"<"						{return newSym(sym.LT,          "<");}
">"						{return newSym(sym.GT,          ">");}
"=="					{return newSym(sym.EQ,          "==");}
"<="					{return newSym(sym.LTE,         "<=");}
">="					{return newSym(sym.GTE,         ">=");}
"<>"					{return newSym(sym.NE,          "<>");}
"||"					{return newSym(sym.OR,          "||");}
"&&"					{return newSym(sym.AND,         "&&");}

{id}                    {return newSym(sym.ID,              yytext());}
{intliteral}            {return newSym(sym.INTLITERAL,		new Integer(yytext()));}
{floatliteral}          {return newSym(sym.FLOATLITERAL,	new Double(yytext()));}
{charliteral}           {return newSym(sym.CHARLITERAL,     yytext());}
{stringliteral}         {return newSym(sym.STRINGLITERAL,   yytext());}
{whitespace}            {/* ignore whitespace*/}
{inline_cmt}            {/* ignore inline comment*/}
{multiline_cmt}         {/* ignore multiline comment*/}

.                       {System.out.println("Illegal Character Found, " + yytext() + " line:" + yyline + " col:" + yychar);}