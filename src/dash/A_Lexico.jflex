/*--------- 1ra Area: Codigo de Usuario---------*/
//-----> Paquetes, importaciones
package dash;
import java_cup.runtime.*;
import java.util.LinkedList;

/*--------- 2da Area: Opciones y Declaraciones---------*/
%%

%{
    //-----> Codigo en java
    //----->Variables, estrucutras de datos
    public static LinkedList<MyError> listaErrorLexicos = new LinkedList<MyError>();
    public String texto ="";
%}

//--------->Directivas
%public
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%line
%unicode
%ignorecase
%cup

//---------> Expresiones Regulares
lineEnd = \r|\n|\r\n
inputChar = [^\r\n]
blankSpace = {lineEnd} | [ \t\f]
space = [ \t\f]

lineComment = "//" {inputChar}* {lineEnd}?
blockComment = "/*" [^*] ~"*/"
comments = {lineComment} | {blockComment}

letter = [a-zA-Z]
digit = [0-9]
number = {digit}+

id = {letter}({digit}|{letter})*
type = "int"|"char"|"int["{number}"]"|"char["{number}"]"|"bool"|"bool["{number}"]"|"String"
int = "int"
intptr = "int["{number}"]"
char = "char"
charptr = "char["{number}"]"
bool = "bool"
boolptr = "bool["{number}"]"
string = "string"
arrow = "=>"
function = "func"
main = "main"
declaration = {type}" "({id}|{id}{space}*"="{space}*({number}|{id}))(", "({id}|{id}{space}*"="{space}*({number}|{id})))*
mult_operator = "*"
div_operator = "/"
add_operator = "+"
minus_operator = "-"
assign = "="
addAssign = "+="
minusAssign = "-="
multAssign = "*="
divAssign = "/="
equal_operator = "=="
and_operator = "&&"
or_operator = "||"
lessThan_operator = "<"
greaterThan_operator = ">"
lessThanOrEqual_operator = "<="
greaterThanOrEqual_operator = ">="
notEqual_operator = "!="
left_parent = "("
right_parent = ")"
left_brac = "["
right_brac = "]"
left_key = "{"
right_key = "}"
semi_colon = ";"
dash = "-"(\n)+
colon = ":"
dot = "."
IF = "if"
ELSE = "else"
FOR = "for"
WHILE = "while"
DO = "do"
SWITCH = "switch"
CASE = "case"
DEFAULT = "default"
BREAK = "break"
short_comment = "//" ~"\n"
long_comment = "/*" ~"*/"
sim_comilla = "'"
dob_comilla = "\""
read = "dash.in"
print = "dash.print"
read = "dash.in"
print = "dash.print"
comma = ","
space = [ \t\r\n]

return = "ret" 

symbs = "°"|"|"|"¬"|"!"|"#"|"%"|"&"|"/"|"("|")"|"="|"+"|"*"|"-"|"_"|"["|"]"|"{"|"}"|"@"|"?"|"¡"|"¿"|"^"|"."|";"|","|":"|{blankSpace}|"$"
text = {dob_comilla}({letter}|{digit}|{symbs})+{dob_comilla}

true = "true"
false = "false"

addFor = "++"
minusFor = "--"
multFor = "**"
//---------> Estados

%%
/*--------- 3ra Area: Reglas Lexicas---------*/

//---------> Simbolos

<YYINITIAL>{
    {int}                   {
                                System.out.println("<int> " + yytext());
                                return new Symbol(Simbolos.INT, yycolumn, yyline, yytext());
                            }
    {intptr}                {
                                System.out.println("<intptr> " + yytext());
                                return new Symbol(Simbolos.INTPTR, yycolumn, yyline, yytext());
                            }
    {char}                  {
                                System.out.println("<char> " + yytext());
                                return new Symbol(Simbolos.CHAR, yycolumn, yyline, yytext());
                            }
    {charptr}               {
                                System.out.println("<charptr> " + yytext());
                                return new Symbol(Simbolos.CHARPTR, yycolumn, yyline, yytext());
                            }
    {bool}                  {
                                System.out.println("<bool> " + yytext());
                                return new Symbol(Simbolos.BOOL, yycolumn, yyline, yytext());
                            }
    {boolptr}               {
                                System.out.println("<boolptr> " + yytext());
                                return new Symbol(Simbolos.BOOLPTR, yycolumn, yyline, yytext());
                            }
    {string}                {
                                System.out.println("<string> " + yytext());
                                return new Symbol(Simbolos.STRING, yycolumn, yyline, yytext());
                            }
    {arrow}                 {
                                System.out.println("<arrow> " + yytext());
                                return new Symbol(Simbolos.ARROW, yycolumn, yyline, yytext());
                            }
    {function}              {
                                System.out.println("<function> " + yytext());
                                return new Symbol(Simbolos.FUNCTION, yycolumn, yyline, yytext());
                            }
    {main}                  {
                                System.out.println("<main> " + yytext());
                                return new Symbol(Simbolos.MAIN, yycolumn, yyline, yytext());
                            }
    {return}                {
                                System.out.println("<return> " + yytext());
                                return new Symbol(Simbolos.RETURN, yycolumn, yyline, yytext());
                            }
    {read}                  {
                                System.out.println("<read> " + yytext());
                                return new Symbol(Simbolos.READ, yycolumn, yyline, yytext());
                            }
    {print}                 {
                                System.out.println("<print> " + yytext());
                                return new Symbol(Simbolos.PRINT, yycolumn, yyline, yytext());
                            }
    {IF}                    {
                                System.out.println("<if> " + yytext());
                                return new Symbol(Simbolos.IF, yycolumn, yyline, yytext());
                            }
    {ELSE}                  {
                                System.out.println("<else> " + yytext());
                                return new Symbol(Simbolos.ELSE, yycolumn, yyline, yytext());
                            }
    {FOR}                   {
                                System.out.println("<for> " + yytext());
                                return new Symbol(Simbolos.FOR, yycolumn, yyline, yytext());
                            }
    {WHILE}                 {
                                System.out.println("<while> " + yytext());
                                return new Symbol(Simbolos.WHILE, yycolumn, yyline, yytext());
                            }
    {DO}                    {
                                System.out.println("<do> " + yytext());
                                return new Symbol(Simbolos.DO, yycolumn, yyline, yytext());
                            }
    {SWITCH}                {
                                System.out.println("<switch> " + yytext());
                                return new Symbol(Simbolos.SWITCH, yycolumn, yyline, yytext());
                            }
    {CASE}                  {
                                System.out.println("<case> " + yytext());
                                return new Symbol(Simbolos.CASE, yycolumn, yyline, yytext());
                            }
    {DEFAULT}               {
                                System.out.println("<default> " + yytext());
                                return new Symbol(Simbolos.DEFAULT, yycolumn, yyline, yytext());
                            }
    {BREAK}                 {
                                System.out.println("<break> " + yytext());
                                return new Symbol(Simbolos.BREAK, yycolumn, yyline, yytext());
                            }
    {id}                    {
                                System.out.println("<id> " + yytext());
                                return new Symbol(Simbolos.ID, yycolumn, yyline, yytext());
                            }
    {addFor}                    {
                                System.out.println("<addFor> " + yytext());
                                return new Symbol(Simbolos.ADDFOR, yycolumn, yyline, yytext());
                            }
    {minusFor}                    {
                                System.out.println("<minusFor> " + yytext());
                                return new Symbol(Simbolos.MINUSFOR, yycolumn, yyline, yytext());
                            }
    {multFor}                    {
                                System.out.println("<multFor> " + yytext());
                                return new Symbol(Simbolos.MULTFOR, yycolumn, yyline, yytext());
                            }
    {mult_operator}         {
                                System.out.println("<mult_operator> " + yytext());
                                return new Symbol(Simbolos.MULT_OP, yycolumn, yyline, yytext());
                            }
    {div_operator}          {
                                System.out.println("<div_operator> " + yytext());
                                return new Symbol(Simbolos.DIV_OP, yycolumn, yyline, yytext());
                            }
    {add_operator}          {
                                System.out.println("<add_operator> " + yytext());
                                return new Symbol(Simbolos.ADD_OP, yycolumn, yyline, yytext());
                            }
    {minus_operator}        {
                                System.out.println("<minus_operator> " + yytext());
                                return new Symbol(Simbolos.MINUS_OP, yycolumn, yyline, yytext());
                            }
    {assign}                {
                                System.out.println("<assign> " + yytext());
                                return new Symbol(Simbolos.ASSIGN, yycolumn, yyline, yytext());
                            }
    (addAssign)             {
                                System.out.println("<add_assign> " + yytext());
                                return new Symbol(Simbolos.ADD_ASSIGN, yycolumn, yyline, yytext());
                            }
    (minusAssign)           {
                                System.out.println("<minus_assign> " + yytext());
                                return new Symbol(Simbolos.MINUS_ASSIGN, yycolumn, yyline, yytext());
                            }
    (multAssign)            {
                                System.out.println("<mult_assign> " + yytext());
                                return new Symbol(Simbolos.MULT_ASSIGN, yycolumn, yyline, yytext());
                            }
    (divAssign)             {
                                System.out.println("<div_assign> " + yytext());
                                return new Symbol(Simbolos.DIV_ASSIGN, yycolumn, yyline, yytext());
                            }
    {equal_operator}        {
                                System.out.println("<equal_operator> " + yytext());
                                return new Symbol(Simbolos.EQUAL_OP, yycolumn, yyline, yytext());
                            }
    {comma}                 {
                                System.out.println("<comma> " + yytext());
                                return new Symbol(Simbolos.COMMA, yycolumn, yyline, yytext());
                            }
    {and_operator}          {
                                System.out.println("<and_operator> " + yytext());
                                return new Symbol(Simbolos.AND_OP, yycolumn, yyline, yytext());
                            }
    {or_operator}           {
                                System.out.println("<or_operator> " + yytext());
                                return new Symbol(Simbolos.OR_OP, yycolumn, yyline, yytext());
                            }
    {lessThan_operator}     {
                                System.out.println("<lessThan_operator> " + yytext());
                                return new Symbol(Simbolos.LESSTHAN_OP, yycolumn, yyline, yytext());
                            }
    {greaterThan_operator}  {
                                System.out.println("<greaterThan_operator> " + yytext());
                                return new Symbol(Simbolos.GREATERTHAN_OP, yycolumn, yyline, yytext());
                            }
    {lessThanOrEqual_operator}  {
                                    System.out.println("<lessThanOrEqual_operator> " + yytext());
                                    return new Symbol(Simbolos.LESSEQUAL_OP, yycolumn, yyline, yytext());
                                }
    {greaterThanOrEqual_operator}   {
                                        System.out.println("<greaterThanOrEqual_operator> " + yytext());
                                        return new Symbol(Simbolos.GREATEREQUAL_OP, yycolumn, yyline, yytext());
                                    }
    {notEqual_operator}     {
                                System.out.println("<notEqual_operator> " + yytext());
                                return new Symbol(Simbolos.NOTEQUAL_OP, yycolumn, yyline, yytext());
                            }
    {left_parent}           {
                                System.out.println("<left_parent> " + yytext());
                                return new Symbol(Simbolos.LPAR, yycolumn, yyline, yytext());
                            }
    {right_parent}          {
                                System.out.println("<right_parent> " + yytext());
                                return new Symbol(Simbolos.RPAR, yycolumn, yyline, yytext());
                            }
    {left_brac}             {
                                System.out.println("<left_brac> " + yytext());
                                return new Symbol(Simbolos.LBRAC, yycolumn, yyline, yytext());
                            }
    {right_brac}            {
                                System.out.println("<right_brac> " + yytext());
                                return new Symbol(Simbolos.RBRAC, yycolumn, yyline, yytext());
                            }
    {left_key}              {
                                System.out.println("<left_key> " + yytext());
                                return new Symbol(Simbolos.LKEY, yycolumn, yyline, yytext());
                            }
    {right_key}             {
                                System.out.println("<right_key> " + yytext());
                                return new Symbol(Simbolos.RKEY, yycolumn, yyline, yytext());
                            }
    {semi_colon}            {
                                System.out.println("<semi_colon> " + yytext());
                                return new Symbol(Simbolos.SEMICOLON, yycolumn, yyline, yytext());
                            }
    {colon}                 {
                                System.out.println("<colon> " + yytext());
                                return new Symbol(Simbolos.COLON, yycolumn, yyline, yytext());
                            }
    {dot}                   {
                                System.out.println("<dot> " + yytext());
                                return new Symbol(Simbolos.DOT, yycolumn, yyline, yytext());
                            }
    {dash}                  {
                                System.out.println("<dash> " + yytext());
                                return new Symbol(Simbolos.DASH, yycolumn, yyline, yytext());
                            }
    {letter}                {
                                System.out.println("<char> " + yytext());
                                return new Symbol(Simbolos.LETTER, yycolumn, yyline, yytext());
                            }
    {number}                {
                                System.out.println("<number> " + yytext());
                                return new Symbol(Simbolos.INTEGER, yycolumn, yyline, yytext());
                            }
    {true}                  {
                                System.out.println("<true> " + yytext());
                                return new Symbol(Simbolos.TRUE, yycolumn, yyline, yytext());
                            }
    {false}                 {
                                System.out.println("<false> " + yytext());
                                return new Symbol(Simbolos.FALSE, yycolumn, yyline, yytext());
                            }
    {short_comment}              {
                                System.out.println("<comment>");
                            }
    {blankSpace}            {
                                System.out.println("<blankSpace> " + yytext());
                            }
    {space}                 {
                                System.out.println("<space> " + yytext());
                            }
    {sim_comilla}           {
                                System.out.println("<sim_comilla> " + yytext());
                                return new Symbol(Simbolos.SIMCOM, yycolumn, yyline, yytext());
                            }
    {dob_comilla}           {
                                System.out.println("<dob_comilla> " + yytext());
                                return new Symbol(Simbolos.DOBCOM, yycolumn, yyline, yytext());
                            }
    {symbs}                  {
                                    System.out.println("<symbols> " + yytext());
                                    return new Symbol(Simbolos.SYMBS, yycolumn, yyline, yytext());
                            }
    {text}                  { 
                                    System.out.println("<text> " + yytext());
                                    return new Symbol(Simbolos.TEXT, yycolumn, yyline, yytext());
                            }
    //---------> Errores Lexicos
    .                       {
                                System.out.println("Error Lexico "+yytext()+" Linea: "+yyline+", Columna: "+yycolumn);
                                MyError datos = new MyError(yytext(), yyline, yycolumn, "Error Lexico", "Simbolo no existe en el lenguaje");
                                listaErrorLexicos.add(datos);
                            }
}
