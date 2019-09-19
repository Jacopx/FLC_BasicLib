import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column


%{
  /* To disable debugging, i.e., printing of recogized token by means of the scanner set the constant _DEBUG to false */
  private static final boolean _DEBUG = true;

  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
%}

nl        = \r|\n|\r\n
ws        = [ \t]
letters	  = \"[A-Za-z0-9 .,:']+\"
id        = [A-Za-z_][A-Za-z0-9_]*
integer   = ([1-9][0-9]*|0)
double    = (([0-9]+\.[0-9]*) | ([0-9]*\.[0-9]+)) (e|E('+'|'-')?[0-9]+)?
bin       = [0-1]*

sym       = [\@\%\&]

date			=	{day}\/{month}\/{year}
day			  =	0[1-9]|[1-2][0-9]|3[0-1]
month 		=	0[1-9]|1[0-2]
year			=	[0-9]{4}


/* TOKENS */
//TOK1	= ({tok1a} | {tok1b})
//tok1a	= (  )
//tok1b = (  )

//TOK2 	= (   )

//TOK3	= (  )

%%
"("     {if (_DEBUG) System.out.print("RO "); return symbol(sym.RO);}
")"     {if (_DEBUG) System.out.print("RC "); return symbol(sym.RC);}
"["     {if (_DEBUG) System.out.print("SO "); return symbol(sym.SO);}
"]"     {if (_DEBUG) System.out.print("SC "); return symbol(sym.SC);}
"{"     {if (_DEBUG) System.out.print("BO "); return symbol(sym.BO);}
"}"     {if (_DEBUG) System.out.print("BC "); return symbol(sym.BC);}

"="     {if (_DEBUG) System.out.print("EQ "); return symbol(sym.EQ);}
"+"     {if (_DEBUG) System.out.print("PLUS "); return symbol(sym.PLUS);}
"-"     {if (_DEBUG) System.out.print("MINUS "); return symbol(sym.MINUS);}
"*"     {if (_DEBUG) System.out.print("STAR "); return symbol(sym.STAR);}
"/"     {if (_DEBUG) System.out.print("DIV "); return symbol(sym.DIV);}
"<"     {if (_DEBUG) System.out.print("MIN "); return symbol(sym.MIN);}
">"     {if (_DEBUG) System.out.print("MAJ "); return symbol(sym.MAJ);}
"<="    {if (_DEBUG) System.out.print("MIN_EQ "); return symbol(sym.MIN_EQ);}
"=<"    {if (_DEBUG) System.out.print("EQ_MIN "); return symbol(sym.EQ_MIN);}
">="    {if (_DEBUG) System.out.print("MAJ_EQ "); return symbol(sym.MAJ_EQ);}
"=>"    {if (_DEBUG) System.out.print("EQ_MAJ "); return symbol(sym.EQ_MAJ);}
"&"     {if (_DEBUG) System.out.print("AND "); return symbol(sym.AND);}
"&&"     {if (_DEBUG) System.out.print("ANDAND "); return symbol(sym.ANDAND);}
"|"     {if (_DEBUG) System.out.print("OR "); return symbol(sym.OR);}
"||"     {if (_DEBUG) System.out.print("OROR"); return symbol(sym.OROR);}
"!"     {if (_DEBUG) System.out.print("NOT "); return symbol(sym.NOT);}
"!="     {if (_DEBUG) System.out.print("NOTEQ "); return symbol(sym.NOTEQ);}
"."     {if (_DEBUG) System.out.print("DOT "); return symbol(sym.DOT);}
"#"     {if (_DEBUG) System.out.print("DASH "); return symbol(sym.DASH);}

"int"   {if (_DEBUG) System.out.print("INT_TYPE "); return symbol(sym.INT_TYPE);}
"double" {if (_DEBUG) System.out.print("DOUBLE_TYPE "); return symbol(sym.DOUBLE_TYPE);}

WHILE   {if (_DEBUG) System.out.print("WHILE "); return symbol(sym.WHILE);}
while   {if (_DEBUG) System.out.print("WHILE "); return symbol(sym.WHILE);}
ELSE    {if (_DEBUG) System.out.print("ELSE "); return symbol(sym.ELSE);}
else    {if (_DEBUG) System.out.print("ELSE "); return symbol(sym.ELSE);}
PRINT   {if (_DEBUG) System.out.print("PRINT "); return symbol(sym.PRINT);}
print   {if (_DEBUG) System.out.print("PRINT "); return symbol(sym.PRINT);}
IF      {if (_DEBUG) System.out.print("IF "); return symbol(sym.IF);}
if      {if (_DEBUG) System.out.print("IF "); return symbol(sym.IF);}
FI      {if (_DEBUG) System.out.print("FI "); return symbol(sym.FI);}
fi      {if (_DEBUG) System.out.print("FI "); return symbol(sym.FI);}
DO      {if (_DEBUG) System.out.print("DO "); return symbol(sym.DO);}
do      {if (_DEBUG) System.out.print("DO "); return symbol(sym.DO);}

START 	{if (_DEBUG) System.out.print("START "); return symbol(sym.START);}
start 	{if (_DEBUG) System.out.print("START "); return symbol(sym.START);}
AVG 	{if (_DEBUG) System.out.print("AVG "); return symbol(sym.AVG);}
avg 	{if (_DEBUG) System.out.print("AVG "); return symbol(sym.AVG);}
STORE 	{if (_DEBUG) System.out.print("STORE "); return symbol(sym.STORE);}
store 	{if (_DEBUG) System.out.print("STORE "); return symbol(sym.STORE);}
STATE 	{if (_DEBUG) System.out.print("STATE "); return symbol(sym.STATE);}
state 	{if (_DEBUG) System.out.print("STATE "); return symbol(sym.STATE);}
DONE    {if (_DEBUG) System.out.print("DONE "); return symbol(sym.DONE);}
done    {if (_DEBUG) System.out.print("DONE "); return symbol(sym.DONE);}
CASE    {if (_DEBUG) System.out.print("CASE "); return symbol(sym.CASE);}
case    {if (_DEBUG) System.out.print("CASE "); return symbol(sym.CASE);}
NEW     {if (_DEBUG) System.out.print("NEW "); return symbol(sym.NEW);}
new     {if (_DEBUG) System.out.print("NEW "); return symbol(sym.NEW);}
IS      {if (_DEBUG) System.out.print("IS "); return symbol(sym.IS);}
is      {if (_DEBUG) System.out.print("IS "); return symbol(sym.IS);}
IN     	{if (_DEBUG) System.out.print("IN "); return symbol(sym.IN);}
in     	{if (_DEBUG) System.out.print("IN "); return symbol(sym.IN);}
RANGE      {if (_DEBUG) System.out.print("RANGE "); return symbol(sym.RANGE);}
range      {if (_DEBUG) System.out.print("RANGE "); return symbol(sym.RANGE);}
S	      {if (_DEBUG) System.out.print("ESSE "); return symbol(sym.ESSE);}
CONFIGURE	      {if (_DEBUG) System.out.print("CONFIG "); return symbol(sym.CONFIG);}
configure	      {if (_DEBUG) System.out.print("CONFIG "); return symbol(sym.CONFIG);}
TEMPERATURE	      {if (_DEBUG) System.out.print("TEMP "); return symbol(sym.TEMP);}
temperature	      {if (_DEBUG) System.out.print("TEMP "); return symbol(sym.TEMP);}
HUMIDITY	      {if (_DEBUG) System.out.print("HUM "); return symbol(sym.HUM);}
humidity	      {if (_DEBUG) System.out.print("HUM "); return symbol(sym.HUM);}

;       {if (_DEBUG) System.out.println("S"); return symbol(sym.S);}
,       {if (_DEBUG) System.out.print("CM "); return symbol(sym.CM);}

{id}      {if (_DEBUG) System.out.print("ID "); return symbol(sym.ID, yytext());}
{integer} {if (_DEBUG) System.out.print("INT "); return symbol(sym.INT, new Integer(yytext()));}
{double}  {if (_DEBUG) System.out.print("DOUBLE "); return symbol(sym.DOUBLE, new Double(yytext()));}
{date}    {if (_DEBUG) System.out.print("DOUBLE "); return symbol(sym.DATE);}
{letters} {if (_DEBUG) System.out.print("letters "); return symbol(sym.LETTERS, yytext());}

//{TOK1}       {if (_DEBUG) System.out.print("TOK1 "); return symbol(sym.TOK1);}
//{TOK2}       {if (_DEBUG) System.out.print("TOK2 "); return symbol(sym.TOK2);}
//{TOK3}       {if (_DEBUG) System.out.print("TOK3 "); return symbol(sym.TOK3);}

"/*" ~ "*/"     {;}

{ws}|{nl}       {;}

. {System.out.println("SCANNER ERROR: "+yytext());}
