[PHASE 1: MiniBASIC DESIGN]{dir="ltr"}

[Subhajit Sahu (2018801013)]{dir="ltr"}

[]{dir="ltr"}

[MiniBASIC is a subset of QuickBASIC. It is thus a case-insensitive
procedural programming language that is easy to program with. Unlike C,
it has no "main" function, and statements can be executed right away.
Also functions cannot access global variables by default, unless
specified with the **SHARED** keyword.]{dir="ltr"}

[]{dir="ltr"}

[Here are a few quick examples:]{dir="ltr"}

[]{dir="ltr"}

+-----------------------------------+
| ['this is a comment]{dir="ltr"}   |
|                                   |
| [PRINT "Monsoon 2019"]{dir="ltr"} |
+-----------------------------------+

[]{dir="ltr"}

  ---------------------------
  [Monsoon 2019]{dir="ltr"}
  ---------------------------

[]{dir="ltr"}

[]{dir="ltr"}

+-------------------------------------------+
| [CLS]{dir="ltr"}                          |
|                                           |
| [INPUT "Name: ", name\$]{dir="ltr"}       |
|                                           |
| [PRINT "Hello "; name\$]{dir="ltr"}       |
|                                           |
| ['CLS =\> clear screen]{dir="ltr"}        |
|                                           |
| ['name\$ =\> name is a STRING]{dir="ltr"} |
+-------------------------------------------+

[]{dir="ltr"}

+-------------------------+
| [Name: Raja]{dir="ltr"} |
|                         |
| [Hello Raja]{dir="ltr"} |
+-------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

+----------------------------------------+
| [CLS]{dir="ltr"}                       |
|                                        |
| [INPUT "N: ", n%]{dir="ltr"}           |
|                                        |
| []{dir="ltr"}                          |
|                                        |
| [sum% = 0]{dir="ltr"}                  |
|                                        |
| [FOR i% = 1 TO n%]{dir="ltr"}          |
|                                        |
| [sum% = sum% + i% \^ 3]{dir="ltr"}     |
|                                        |
| [NEXT]{dir="ltr"}                      |
|                                        |
| [PRINT "Sigma n\^3: "; sum]{dir="ltr"} |
|                                        |
| ['n% =\> n is an INTEGER]{dir="ltr"}   |
+----------------------------------------+

[]{dir="ltr"}

+-----------------------------+
| [N: 3]{dir="ltr"}           |
|                             |
| [Sigma n\^3: 36]{dir="ltr"} |
+-----------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

+------------------------------------------------------+
| [DECLARE FUNCTION isprime%(n AS INTEGER)]{dir="ltr"} |
|                                                      |
| [DIM n AS INTEGER]{dir="ltr"}                        |
|                                                      |
| []{dir="ltr"}                                        |
|                                                      |
| [CLS]{dir="ltr"}                                     |
|                                                      |
| [INPUT "N: ", n]{dir="ltr"}                          |
|                                                      |
| []{dir="ltr"}                                        |
|                                                      |
| [IF isprime%(n) = 1 THEN]{dir="ltr"}                 |
|                                                      |
| [PRINT n; " is prime"]{dir="ltr"}                    |
|                                                      |
| [ELSE]{dir="ltr"}                                    |
|                                                      |
| [PRINT n; " is not prime"]{dir="ltr"}                |
|                                                      |
| [END IF]{dir="ltr"}                                  |
|                                                      |
| []{dir="ltr"}                                        |
|                                                      |
| []{dir="ltr"}                                        |
|                                                      |
| [FUNCTION isprime%(n as INTEGER)]{dir="ltr"}         |
|                                                      |
| [DIM i as INTEGER]{dir="ltr"}                        |
|                                                      |
| []{dir="ltr"}                                        |
|                                                      |
| [isprime% = 0]{dir="ltr"}                            |
|                                                      |
| [FOR i = 2 TO n - 1]{dir="ltr"}                      |
|                                                      |
| [IF n MOD i = 0 THEN EXIT FUNCTION]{dir="ltr"}       |
|                                                      |
| [NEXT]{dir="ltr"}                                    |
|                                                      |
| []{dir="ltr"}                                        |
|                                                      |
| [isprime% = 1]{dir="ltr"}                            |
|                                                      |
| [END FUNCTION]{dir="ltr"}                            |
+------------------------------------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

+-------------------------+
| [N: 7]{dir="ltr"}       |
|                         |
| [7 is prime]{dir="ltr"} |
+-------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

**[DATA TYPES]{dir="ltr"}**

[]{dir="ltr"}

[Datatypes in MiniBASIC can be specified either through variable name
suffixes or by using the **DIM** keyword. Single and multidimensional
arrays can be specified using the **DIM** keyword, and may later be
resized with **REDIM** or freed with **ERASE**. Arrays is MiniBASIC can
start with 1, unlike C. The size of a particular dimension of the array
can be found using **UBOUND** function.]{dir="ltr"}

[]{dir="ltr"}

  **[SUFFIX]{dir="ltr"}**   **[TYPE NAME]{dir="ltr"}**
  ------------------------- ----------------------------
  [%]{dir="ltr"}            [INTEGER]{dir="ltr"}
  [&]{dir="ltr"}            [UNSIGNED]{dir="ltr"}
  [!]{dir="ltr"}            [SINGLE]{dir="ltr"}
  [\#]{dir="ltr"}           [DOUBLE]{dir="ltr"}
  [\$]{dir="ltr"}           [STRING]{dir="ltr"}
  [@]{dir="ltr"}            [CHARACTER]{dir="ltr"}
  [?]{dir="ltr"}            [BOOLEAN]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

+---------------------------------------------+
| ['define a string using suffix]{dir="ltr"}  |
|                                             |
| [name\$ = "ajit doval"]{dir="ltr"}          |
|                                             |
| []{dir="ltr"}                               |
|                                             |
| ['define a double using DIM]{dir="ltr"}     |
|                                             |
| [DIM article AS DOUBLE]{dir="ltr"}          |
|                                             |
| [article = 370.0]{dir="ltr"}                |
|                                             |
| []{dir="ltr"}                               |
|                                             |
| ['define a 1D integer array]{dir="ltr"}     |
|                                             |
| [DIM votes(29) AS INTEGER]{dir="ltr"}       |
|                                             |
| [votes(1) = 34]{dir="ltr"}                  |
|                                             |
| []{dir="ltr"}                               |
|                                             |
| ['define a 3D single array]{dir="ltr"}      |
|                                             |
| [DIM heat(10, 10, 10) AS SINGLE]{dir="ltr"} |
|                                             |
| [heat(10, 10, 10) = 0.8]{dir="ltr"}         |
|                                             |
| []{dir="ltr"}                               |
|                                             |
| ['resize votes array]{dir="ltr"}            |
|                                             |
| [REDIM votes(28)]{dir="ltr"}                |
+---------------------------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

**[ARITHMETIC OPERATORS]{dir="ltr"}**

[]{dir="ltr"}

[The following arithmetic and boolean operators can be used:]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

  **[OPERATOR]{dir="ltr"}**                             **[EXAMPLE]{dir="ltr"}**
  ----------------------------------------------------- --------------------------
  [Exclusive-Or]{dir="ltr"}                             [a **XOR** b]{dir="ltr"}
  [Or]{dir="ltr"}                                       [a **OR** b]{dir="ltr"}
  [Modulus]{dir="ltr"}                                  [a **MOD** b]{dir="ltr"}
  [Implication]{dir="ltr"}                              [a **IMP** b]{dir="ltr"}
  [Equivalence]{dir="ltr"}                              [a **EQV** b]{dir="ltr"}
  [And]{dir="ltr"}                                      [a **AND** b]{dir="ltr"}
  [Not]{dir="ltr"}                                      [**NOT** a]{dir="ltr"}
  [Integer divide]{dir="ltr"}                           [a **\\** b]{dir="ltr"}
  [Power]{dir="ltr"}                                    [a **\^** b]{dir="ltr"}
  [Others (+ - \* / = \<\> \< \> \<= \>=)]{dir="ltr"}   []{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

**[CONTROL STATEMENTS]{dir="ltr"}**

[]{dir="ltr"}

[**IF**-**THEN**-**ELSE**, which is used for conditional execution /
branching, can be used with both single line and block formats. Looping
is possible through the use of the convenient **FOR**-**NEXT** loop.
Other alternatives include **WHILE**-**WEND**, and **DO**-**LOOP** which
can be used for either entry or exit control. Ternary operator is
achievable through a single line **IF**.]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

+-----------------------------------------------------------------------+
| ['single line if]{dir="ltr"}                                          |
|                                                                       |
| [IF 1 = 1 THEN PRINT "Math wins" ELSE PRINT "Random wins"]{dir="ltr"} |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['block if]{dir="ltr"}                                                |
|                                                                       |
| [IF 0 = 1 THEN]{dir="ltr"}                                            |
|                                                                       |
| [PRINT "0 = 1"]{dir="ltr"}                                            |
|                                                                       |
| [ELSEIF 1 = 1 THEN]{dir="ltr"}                                        |
|                                                                       |
| [PRINT "1 = 1"]{dir="ltr"}                                            |
|                                                                       |
| [ELSE]{dir="ltr"}                                                     |
|                                                                       |
| [PRINT "Neither"]{dir="ltr"}                                          |
|                                                                       |
| [END IF]{dir="ltr"}                                                   |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['for loop]{dir="ltr"}                                                |
|                                                                       |
| [FOR i = 1 TO 10 STEP 2]{dir="ltr"}                                   |
|                                                                       |
| [PRINT i]{dir="ltr"}                                                  |
|                                                                       |
| [NEXT]{dir="ltr"}                                                     |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['exit for loop]{dir="ltr"}                                           |
|                                                                       |
| [FOR i = 1 to 10 STEP 2]{dir="ltr"}                                   |
|                                                                       |
| [PRINT i]{dir="ltr"}                                                  |
|                                                                       |
| [IF i \> 5 THEN EXIT FOR]{dir="ltr"}                                  |
|                                                                       |
| [NEXT]{dir="ltr"}                                                     |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['while loop]{dir="ltr"}                                              |
|                                                                       |
| [i = 1]{dir="ltr"}                                                    |
|                                                                       |
| [WHILE i \<= 10]{dir="ltr"}                                           |
|                                                                       |
| [PRINT i]{dir="ltr"}                                                  |
|                                                                       |
| [i = i + 2]{dir="ltr"}                                                |
|                                                                       |
| [WEND]{dir="ltr"}                                                     |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['do loop (entry control)]{dir="ltr"}                                 |
|                                                                       |
| [i = 12]{dir="ltr"}                                                   |
|                                                                       |
| [DO WHILE i \<= 10]{dir="ltr"}                                        |
|                                                                       |
| [PRINT i]{dir="ltr"}                                                  |
|                                                                       |
| [IF i \> 5 THEN EXIT DO]{dir="ltr"}                                   |
|                                                                       |
| [LOOP]{dir="ltr"}                                                     |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['do loop (exit control)]{dir="ltr"}                                  |
|                                                                       |
| [i = 12]{dir="ltr"}                                                   |
|                                                                       |
| [DO]{dir="ltr"}                                                       |
|                                                                       |
| [PRINT i]{dir="ltr"}                                                  |
|                                                                       |
| [LOOP UNTIL i \> 10]{dir="ltr"}                                       |
|                                                                       |
| []{dir="ltr"}                                                         |
|                                                                       |
| ['ternary condition]{dir="ltr"}                                       |
|                                                                       |
| [i = 12]{dir="ltr"}                                                   |
|                                                                       |
| [IF i \<= 10 THEN ok = 1 ELSE ok = 0]{dir="ltr"}                      |
+-----------------------------------------------------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

**[FUNCTIONS]{dir="ltr"}**

[]{dir="ltr"}

[In MIniBASIC, procedures which return a value are called **FUNCTION**s,
and which do not return any values are called **SUB**routines. Arguments
to these are passed by reference by default, and can be passed by value
using **BYVAL**. The return value of function is set by using the
function name as a variable, and setting its value (before exit).
Function names require a type suffix in order to specify the returned
data type. Both subroutines and functions must be declared before being
used in the program. Usually function / subroutine definition is placed
at the end of the program.]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

+---------------------------------------------------------------------+
| [DECLARE SUB printlines(n AS INTEGER)]{dir="ltr"}                   |
|                                                                     |
| [DECLARE FUNCTION countspaces%(s AS STRING)]{dir="ltr"}             |
|                                                                     |
| [DECLARE FUNCTION factorial%(n AS INTEGER)]{dir="ltr"}              |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| [CLS]{dir="ltr"}                                                    |
|                                                                     |
| [PRINT "Printing 3 empty lines"]{dir="ltr"}                         |
|                                                                     |
| [printlines 3]{dir="ltr"}                                           |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| [name\$ = "harry kumar potter"]{dir="ltr"}                          |
|                                                                     |
| [PRINT "Spaces in "; name\$; ": "; countspaces%(name\$)]{dir="ltr"} |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| ['a recursive function]{dir="ltr"}                                  |
|                                                                     |
| [num% = 6]{dir="ltr"}                                               |
|                                                                     |
| [PRINT "Factorial of"; n; ": "; factorial%(num%)]{dir="ltr"}        |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| [SUB printlines(n AS INTEGER)]{dir="ltr"}                           |
|                                                                     |
| [FOR i% = 1 TO n]{dir="ltr"}                                        |
|                                                                     |
| [PRINT]{dir="ltr"}                                                  |
|                                                                     |
| [NEXT]{dir="ltr"}                                                   |
|                                                                     |
| [END SUB]{dir="ltr"}                                                |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| [FUNCTION countspaces%(s AS STRING)]{dir="ltr"}                     |
|                                                                     |
| [count% = 0]{dir="ltr"}                                             |
|                                                                     |
| [FOR i% = 1 TO LEN(s)]{dir="ltr"}                                   |
|                                                                     |
| [IF MID\$(s, i%, 1) = " " THEN count% = count% + 1]{dir="ltr"}      |
|                                                                     |
| [NEXT]{dir="ltr"}                                                   |
|                                                                     |
| [countspaces% = count%]{dir="ltr"}                                  |
|                                                                     |
| [END FUNCTION]{dir="ltr"}                                           |
|                                                                     |
| []{dir="ltr"}                                                       |
|                                                                     |
| [FUNCTION factorial%(n AS INTEGER)]{dir="ltr"}                      |
|                                                                     |
| [factorial% = 1]{dir="ltr"}                                         |
|                                                                     |
| [IF n \<= 1 THEN EXIT FUNCTION]{dir="ltr"}                          |
|                                                                     |
| [factorial% = n \* factorial%(n - 1)]{dir="ltr"}                    |
|                                                                     |
| [END FUNCTION]{dir="ltr"}                                           |
+---------------------------------------------------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

**[I/O ROUTINES]{dir="ltr"}**

[]{dir="ltr"}

[Reading from, and writing to files can be done using a very similar
syntax of **INPUT** and **PRINT**. All file operations are performed
through file numbers. A file needs to be opened before reading or
writing to it, and it must be closed after all such operations are
complete in order to ensure properly saved on disk.]{dir="ltr"}

[]{dir="ltr"}

+-----------------------------------------------------------+
| [PRINT "Vote count:"]{dir="ltr"}                          |
|                                                           |
| [OPEN "votes.csv" FOR INPUT AS 1]{dir="ltr"}              |
|                                                           |
| [WHILE NOT EOF(1)]{dir="ltr"}                             |
|                                                           |
| [INPUT \#1, state\$, count%]{dir="ltr"}                   |
|                                                           |
| [PRINT state\$; " provided"; count%; " votes"]{dir="ltr"} |
|                                                           |
| [WEND]{dir="ltr"}                                         |
|                                                           |
| [CLOSE \#1]{dir="ltr"}                                    |
|                                                           |
| [PRINT]{dir="ltr"}                                        |
|                                                           |
| []{dir="ltr"}                                             |
|                                                           |
| [OPEN "expenses.txt" FROM APPEND AS 2]{dir="ltr"}         |
|                                                           |
| [PRINT \#2, "butter", 450]{dir="ltr"}                     |
|                                                           |
| [PRINT \#2, "cashew", 950]{dir="ltr"}                     |
|                                                           |
| [CLOSE \#2]{dir="ltr"}                                    |
|                                                           |
| []{dir="ltr"}                                             |
|                                                           |
| [PRINT "Alice in Wonderland:"]{dir="ltr"}                 |
|                                                           |
| [OPEN "alice.txt" FOR INPUT AS 2]{dir="ltr"}              |
|                                                           |
| [DO WHILE NOT EOF(2)]{dir="ltr"}                          |
|                                                           |
| [LINE INPUT \#2, line\$]{dir="ltr"}                       |
|                                                           |
| [PRINT line\$]{dir="ltr"}                                 |
|                                                           |
| [LOOP]{dir="ltr"}                                         |
|                                                           |
| [CLOSE \#2]{dir="ltr"}                                    |
|                                                           |
| [PRINT]{dir="ltr"}                                        |
+-----------------------------------------------------------+

[]{dir="ltr"}

[PTO]{dir="ltr"}

[]{dir="ltr"}

**[MACRO SYNTAX]{dir="ltr"}**

[]{dir="ltr"}

[Here is the macro syntax of MiniBASIC expressed in context-free
grammar:]{dir="ltr"}

[]{dir="ltr"}

+-----------------------------------+-----------------------------------+
| **[S]{dir="ltr"}**                | [**main\_stmt** **S \|**          |
|                                   | ϶]{dir="ltr"}                     |
+===================================+===================================+
| [**main\_stmt**]{dir="ltr"}       | [**declare** \| **sub** \|        |
|                                   | **function** \|                   |
|                                   | **stmt**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[declare]{dir="ltr"}**          | [**declare\_sub** \|              |
|                                   | **declare\_fn**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[declare\_sub]{dir="ltr"}**     | [*DECLARE SUB* **name**           |
|                                   | *(***lpar***)*]{dir="ltr"}        |
+-----------------------------------+-----------------------------------+
| **[declare\_fn]{dir="ltr"}**      | [*DECLARE FUNCTION* **name\_t**   |
|                                   | *(***lpar***)*]{dir="ltr"}        |
+-----------------------------------+-----------------------------------+
| **[sub]{dir="ltr"}**              | [*SUB* **name**                   |
|                                   | *(***lpar***)*]{dir="ltr"}        |
|                                   |                                   |
|                                   | **[lstmt]{dir="ltr"}**            |
|                                   |                                   |
|                                   | [*END SUB*]{dir="ltr"}            |
+-----------------------------------+-----------------------------------+
| **[function]{dir="ltr"}**         | [*FUNCTION* **name\_t**           |
|                                   | *(***lpar***)*]{dir="ltr"}        |
|                                   |                                   |
|                                   | **[lstmt]{dir="ltr"}**            |
|                                   |                                   |
|                                   | *[END FUNCTION]{dir="ltr"}*       |
+-----------------------------------+-----------------------------------+
| **[lstmt]{dir="ltr"}**            | **[stmt]{dir="ltr"}**             |
|                                   |                                   |
|                                   | [**lstmt** \| ϶]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[stmt]{dir="ltr"}**             | [**comment** \| **sub\_call** \|  |
|                                   | **define** \| **assign** \|       |
|                                   | **io** \| **branch** \|           |
|                                   | **loop**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[sub\_call]{dir="ltr"}**        | [**name** **lexpr**]{dir="ltr"}   |
+-----------------------------------+-----------------------------------+
| **[fn\_call]{dir="ltr"}**         | [**name\_t** \| **name\_t**       |
|                                   | *(***lexpr***)*]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[define]{dir="ltr"}**           | [**dim** \| **redim** \|          |
|                                   | **shared** \| **static** \|       |
|                                   | **type**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[dim]{dir="ltr"}**              | [*DIM* **dim\_shared**            |
|                                   | **ldef1**]{dir="ltr"}             |
+-----------------------------------+-----------------------------------+
| **[dim\_shared]{dir="ltr"}**      | [*SHARED* \| ϶]{dir="ltr"}        |
+-----------------------------------+-----------------------------------+
| **[redim]{dir="ltr"}**            | [*REDIM* **larr1**]{dir="ltr"}    |
+-----------------------------------+-----------------------------------+
| **[shared]{dir="ltr"}**           | [*SHARED* **lpar1**]{dir="ltr"}   |
+-----------------------------------+-----------------------------------+
| **[static]{dir="ltr"}**           | [*STATIC* **lpar1**]{dir="ltr"}   |
+-----------------------------------+-----------------------------------+
| **[type]{dir="ltr"}**             | [TYPE **name**]{dir="ltr"}        |
|                                   |                                   |
|                                   | **[ldef1\_blk]{dir="ltr"}**       |
|                                   |                                   |
|                                   | [END TYPE]{dir="ltr"}             |
+-----------------------------------+-----------------------------------+
| **[assign]{dir="ltr"}**           | [**let** \| **const** \|          |
|                                   | **assign\_dir**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[let]{dir="ltr"}**              | [*LET*                            |
|                                   | **assign\_dir**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[const]{dir="ltr"}**            | [*CONST*                          |
|                                   | **assign\_dir**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[assign\_dir]{dir="ltr"}**      | [**var\_t** *=*                   |
|                                   | **expr**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[io]{dir="ltr"}**               | [**input** \| **print** \|        |
|                                   | **open** \| **close**]{dir="ltr"} |
+-----------------------------------+-----------------------------------+
| **[input]{dir="ltr"}**            | [**input\_cmd** \|                |
|                                   | **input\_file**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[input\_cmd]{dir="ltr"}**       | [*INPUT* **prompt**               |
|                                   | **lvar**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[input\_file]{dir="ltr"}**      | [*INPUT* **fnum\_h***,*           |
|                                   | **lvar**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[prompt]{dir="ltr"}**           | [**string***,* \| **string***;*   |
|                                   | \| ϶]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[print]{dir="ltr"}**            | **[print\_cmd \|                  |
|                                   | print\_file]{dir="ltr"}**         |
+-----------------------------------+-----------------------------------+
| **[print\_cmd]{dir="ltr"}**       | [*PRINT* **print\_fmt**           |
|                                   | **print\_lexpr**]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[print\_file]{dir="ltr"}**      | [*PRINT* **fnum\_h**,             |
|                                   | **print\_fmt**                    |
|                                   | **print\_lexpr**]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[print\_fmt]{dir="ltr"}**       | [*USING* **string***;* \|         |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[print\_lexpr]{dir="ltr"}**     | [**expr***,* **print\_lexpr** \|  |
|                                   | **expr***;* **print\_lexpr** \|   |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[open]{dir="ltr"}**             | [**open\_long** \|                |
|                                   | **open\_short**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[open\_long]{dir="ltr"}**       | [*OPEN* **fname** **fmode1**      |
|                                   | **facc** *AS*                     |
|                                   | **fnum**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[open\_short]{dir="ltr"}**      | [*OPEN* **fmode2***,*             |
|                                   | **fnum\_h**,                      |
|                                   | **fname**]{dir="ltr"}             |
+-----------------------------------+-----------------------------------+
| **[fname]{dir="ltr"}**            | **[expr]{dir="ltr"}**             |
+-----------------------------------+-----------------------------------+
| **[fmode1]{dir="ltr"}**           | [*FOR* **fmode1\_type** \|        |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[fmode1\_type]{dir="ltr"}**     | [*OUTPUT* \| *INPUT* \| *RANDOM*  |
|                                   | \| *BINARY* \|                    |
|                                   | *APPEND*]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[facc]{dir="ltr"}**             | [*ACCESS* **facc\_type** \|       |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[facc\_type]{dir="ltr"}**       | [*READ* \| *WRITE* \| *READ       |
|                                   | WRITE*]{dir="ltr"}                |
+-----------------------------------+-----------------------------------+
| **[fmode2]{dir="ltr"}**           | [*"O"* \| *"I"* \| *"R"* \| *"B"* |
|                                   | \| *"A"*]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[close]{dir="ltr"}**            | [*CLOSE* **lfnum1**]{dir="ltr"}   |
+-----------------------------------+-----------------------------------+
| **[branch]{dir="ltr"}**           | [**branch\_dir** \|               |
|                                   | **branch\_cond**]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[branch\_dir]{dir="ltr"}**      | [**goto** \| **gosub** \|         |
|                                   | **return** \|                     |
|                                   | **exit**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[goto]{dir="ltr"}**             | [GOTO **label**]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[gosub]{dir="ltr"}**            | [GOSUB **label**]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[return]{dir="ltr"}**           | [RETURN \| RETURN                 |
|                                   | **label**]{dir="ltr"}             |
+-----------------------------------+-----------------------------------+
| **[exit]{dir="ltr"}**             | [EXIT **exit\_from**]{dir="ltr"}  |
+-----------------------------------+-----------------------------------+
| **[exit\_from]{dir="ltr"}**       | [DO \| FOR \| FUNCTION \|         |
|                                   | SUB]{dir="ltr"}                   |
+-----------------------------------+-----------------------------------+
| **[branch\_cond]{dir="ltr"}**     | [**if** \| **select**]{dir="ltr"} |
+-----------------------------------+-----------------------------------+
| **[if]{dir="ltr"}**               | [**if\_then** \|                  |
|                                   | **if\_blk**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[if\_then]{dir="ltr"}**         | [*IF* **cond** **then\_stmt**     |
|                                   | **else\_stmt**]{dir="ltr"}        |
+-----------------------------------+-----------------------------------+
| **[if\_blk]{dir="ltr"}**          | [IF **cond**                      |
|                                   | **then\_blk**]{dir="ltr"}         |
|                                   |                                   |
|                                   | **[lelseif\_blk]{dir="ltr"}**     |
|                                   |                                   |
|                                   | **[else\_blk]{dir="ltr"}**        |
|                                   |                                   |
|                                   | **[endif]{dir="ltr"}**            |
+-----------------------------------+-----------------------------------+
| **[then\_stmt]{dir="ltr"}**       | [*THEN* **stmt**]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[then\_blk]{dir="ltr"}**        | [*THEN*]{dir="ltr"}               |
|                                   |                                   |
|                                   | **[lstmt]{dir="ltr"}**            |
+-----------------------------------+-----------------------------------+
| **[lelseif\_blk]{dir="ltr"}**     | **[elseif\_blk]{dir="ltr"}**      |
|                                   |                                   |
|                                   | [**lelseif\_blk** \|              |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[elseif\_blk]{dir="ltr"}**      | [*ELSEIF* **cond**]{dir="ltr"}    |
|                                   |                                   |
|                                   | [**lstmt** \| ϶]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[else\_stmt]{dir="ltr"}**       | [*ELSE* **stmt** \| ϶]{dir="ltr"} |
+-----------------------------------+-----------------------------------+
| **[else\_blk]{dir="ltr"}**        | *[ELSE]{dir="ltr"}*               |
|                                   |                                   |
|                                   | [**lstmt** \| ϶]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[endif]{dir="ltr"}**            | [*ENDIF* \| *END IF*]{dir="ltr"}  |
+-----------------------------------+-----------------------------------+
| **[select]{dir="ltr"}**           | [*SELECT CASE*                    |
|                                   | **expr**]{dir="ltr"}              |
|                                   |                                   |
|                                   | **[lcase]{dir="ltr"}**            |
|                                   |                                   |
|                                   | *[END SELECT]{dir="ltr"}*         |
+-----------------------------------+-----------------------------------+
| **[lcase]{dir="ltr"}**            | [**case\_expr**]{dir="ltr"}       |
|                                   |                                   |
|                                   | [**lcase**? \|                    |
|                                   | **case\_else**]{dir="ltr"}        |
+-----------------------------------+-----------------------------------+
| **[case\_expr]{dir="ltr"}**       | [*CASE* **expr** (*TO*            |
|                                   | **expr**)?]{dir="ltr"}            |
|                                   |                                   |
|                                   | **[lstmt]{dir="ltr"}**            |
+-----------------------------------+-----------------------------------+
| **[case\_else]{dir="ltr"}**       | [*CASE ELSE*]{dir="ltr"}          |
|                                   |                                   |
|                                   | **[lstmt]{dir="ltr"}**            |
+-----------------------------------+-----------------------------------+
| **[loop]{dir="ltr"}**             | [**for** \| **while** \|          |
|                                   | **do**]{dir="ltr"}                |
+-----------------------------------+-----------------------------------+
| **[for]{dir="ltr"}**              | [*FOR* **var** *=* **expr** *TO*  |
|                                   | **expr** (*STEP*                  |
|                                   | **expr**)?]{dir="ltr"}            |
|                                   |                                   |
|                                   | [**lstmt**]{dir="ltr"}            |
|                                   |                                   |
|                                   | [*NEXT* **var**?]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[while]{dir="ltr"}**            | [*WHILE* **cond**]{dir="ltr"}     |
|                                   |                                   |
|                                   | [**lstmt**]{dir="ltr"}            |
|                                   |                                   |
|                                   | *[WEND]{dir="ltr"}*               |
+-----------------------------------+-----------------------------------+
| **[do]{dir="ltr"}**               | [**do\_entry** \|                 |
|                                   | **do\_exit**]{dir="ltr"}          |
+-----------------------------------+-----------------------------------+
| **[do\_entry]{dir="ltr"}**        | [*DO* (*WHILE* \| *UNTIL*)        |
|                                   | **cond**]{dir="ltr"}              |
|                                   |                                   |
|                                   | [**lstmt**]{dir="ltr"}            |
|                                   |                                   |
|                                   | *[LOOP]{dir="ltr"}*               |
+-----------------------------------+-----------------------------------+
| **[do\_exit]{dir="ltr"}**         | [*DO*]{dir="ltr"}                 |
|                                   |                                   |
|                                   | [**lstmt**]{dir="ltr"}            |
|                                   |                                   |
|                                   | [*LOOP* (*WHILE* \| *UNTIL*)      |
|                                   | **cond**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[name\_t]{dir="ltr"}**          | **[name dtype\_s]{dir="ltr"}**    |
+-----------------------------------+-----------------------------------+
| **[sym]{dir="ltr"}**              | [**name \| name**                 |
|                                   | *()*]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[sym\_t]{dir="ltr"}**           | [**name\_t \| name\_t**           |
|                                   | *()*]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[var]{dir="ltr"}**              | [**name** \| **name**             |
|                                   | *(***lexpr1***)*]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[var\_t]{dir="ltr"}**           | [**name\_t** \| **name\_t**       |
|                                   | *(***lexpr1***)*]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[arr\_t]{dir="ltr"}**           | [**name\_t**                      |
|                                   | *(***lexpr1***)*]{dir="ltr"}      |
+-----------------------------------+-----------------------------------+
| **[par]{dir="ltr"}**              | [**sym** *AS* **dtype\_n** \|     |
|                                   | **sym\_t**]{dir="ltr"}            |
+-----------------------------------+-----------------------------------+
| **[def]{dir="ltr"}**              | [**var** *AS* **dtype\_n** \|     |
|                                   | **var\_t**]{dir="ltr"}            |
+-----------------------------------+-----------------------------------+
| **[larr]{dir="ltr"}**             | [**arr\_t**, **larr1** \|         |
|                                   | **arr\_t** \| ϶]{dir="ltr"}       |
+-----------------------------------+-----------------------------------+
| **[larr1]{dir="ltr"}**            | [**arr\_t**, **larr1** \|         |
|                                   | **arr\_t**]{dir="ltr"}            |
+-----------------------------------+-----------------------------------+
| **[lvar]{dir="ltr"}**             | [**var***,* **lvar1** \| **var**  |
|                                   | \| ϶]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[lvar1]{dir="ltr"}**            | [**var** **lvar1** \|             |
|                                   | **var**]{dir="ltr"}               |
+-----------------------------------+-----------------------------------+
| **[lpar]{dir="ltr"}**             | [**par***,* **lpar1** \| **par**  |
|                                   | \| ϶]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[lpar1]{dir="ltr"}**            | [**par***,* **lpar1** \|          |
|                                   | **par**]{dir="ltr"}               |
+-----------------------------------+-----------------------------------+
| **[ldef]{dir="ltr"}**             | [**def**, **ldef1** \| **def** \| |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[ldef1]{dir="ltr"}**            | [**def**, **ldef1** \|            |
|                                   | **def**]{dir="ltr"}               |
+-----------------------------------+-----------------------------------+
| **[ldef\_blk]{dir="ltr"}**        | [**def**]{dir="ltr"}              |
|                                   |                                   |
|                                   | [**ldef1\_blk** \| **def** \|     |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[ldef1\_blk]{dir="ltr"}**       | **[def]{dir="ltr"}**              |
|                                   |                                   |
|                                   | [**ldef1\_blk** \|                |
|                                   | **def**]{dir="ltr"}               |
+-----------------------------------+-----------------------------------+
| **[lexpr]{dir="ltr"}**            | [**expr**, **lexpr1** \| **expr** |
|                                   | \| ϶]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[lexpr1]{dir="ltr"}**           | **[expr, lexpr1 \|                |
|                                   | expr]{dir="ltr"}**                |
+-----------------------------------+-----------------------------------+
| **[fnum]{dir="ltr"}**             | [**fnum\_h** \|                   |
|                                   | **num**]{dir="ltr"}               |
+-----------------------------------+-----------------------------------+
| **[fnum\_h]{dir="ltr"}**          | [*\#***num**]{dir="ltr"}          |
+-----------------------------------+-----------------------------------+
| **[lfnum]{dir="ltr"}**            | [**fnum**, **lfnum1** \| **fnum** |
|                                   | \| ϶]{dir="ltr"}                  |
+-----------------------------------+-----------------------------------+
| **[lfnum1]{dir="ltr"}**           | [**fnum**, **lfnum1** \|          |
|                                   | **fnum**]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[dtype\_n]{dir="ltr"}**         | [*INTEGER* \| *UNSIGNED* \|       |
|                                   | *SINGLE* \| *DOUBLE* \| *STRING*  |
|                                   | \| *CHAR* \|                      |
|                                   | *BOOLEAN*]{dir="ltr"}             |
+-----------------------------------+-----------------------------------+
| **[dtype\_s]{dir="ltr"}**         | [*%* \| *&* \| *!* \| *\#* \|     |
|                                   | *\$* \| *@* \| *?* \|             |
|                                   | ϶]{dir="ltr"}                     |
+-----------------------------------+-----------------------------------+
| **[cond]{dir="ltr"}**             | **[expr]{dir="ltr"}**             |
+-----------------------------------+-----------------------------------+
| **[bin\_log]{dir="ltr"}**         | [*AND* \| *OR* \| *XOR* \| *IMP*  |
|                                   | \| *EQV*]{dir="ltr"}              |
+-----------------------------------+-----------------------------------+
| **[bin\_ari]{dir="ltr"}**         | *[MOD]{dir="ltr"}*                |
+-----------------------------------+-----------------------------------+
| **[bin\_add]{dir="ltr"}**         | [*+* \| *-*]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[bin\_mul]{dir="ltr"}**         | [*\** \| */* \| *\\*]{dir="ltr"}  |
+-----------------------------------+-----------------------------------+
| **[bin\_pow]{dir="ltr"}**         | *[\^]{dir="ltr"}*                 |
+-----------------------------------+-----------------------------------+
| **[una\_log]{dir="ltr"}**         | *[NOT]{dir="ltr"}*                |
+-----------------------------------+-----------------------------------+
| **[una\_add]{dir="ltr"}**         | [*+* \| *-*]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr]{dir="ltr"}**             | [**expr bin\_log expr** \|        |
|                                   | **expr\_1**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_1]{dir="ltr"}**          | [**expr bin\_ari expr** \|        |
|                                   | **expr\_2**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_2]{dir="ltr"}**          | [**expr bin\_add expr** \|        |
|                                   | **expr\_3**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_3]{dir="ltr"}**          | [**expr bin\_mul expr** \|        |
|                                   | **expr\_4**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_4]{dir="ltr"}**          | [**expr bin\_pow expr** \|        |
|                                   | **expr\_5**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_5]{dir="ltr"}**          | [**una\_log expr** \|             |
|                                   | **expr\_6**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_6]{dir="ltr"}**          | [**una\_ari expr** \|             |
|                                   | **expr\_7**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+
| **[expr\_7]{dir="ltr"}**          | [**litr** \| **var\_t** \|        |
|                                   | **fn\_call** \|                   |
|                                   | *(***expr***)*]{dir="ltr"}        |
+-----------------------------------+-----------------------------------+
| **[litr]{dir="ltr"}**             | [**integer** \| **float** \|      |
|                                   | **string** \|                     |
|                                   | **boolean**]{dir="ltr"}           |
+-----------------------------------+-----------------------------------+

[]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

**[MICRO SYNTAX]{dir="ltr"}**

[]{dir="ltr"}

[Here is the micro syntax of MiniBASIC expressed in regular
expressions:]{dir="ltr"}

[]{dir="ltr"}

[]{dir="ltr"}

  **[name]{dir="ltr"}**      [\[A-Za-z\_\]\\w\*]{dir="ltr"}
  -------------------------- -------------------------------------------------------------------
  [**integer**]{dir="ltr"}   [\[-+\]?\\d+]{dir="ltr"}
  **[float]{dir="ltr"}**     [\[-+\]?(\[0-9\]\*\[.\])?\[0-9\]+(\[eE\]\[-+\]?\\d+)?]{dir="ltr"}
  **[string]{dir="ltr"}**    [\\".\*?\\"]{dir="ltr"}
  **[boolean]{dir="ltr"}**   [TRUE\|FALSE (i)]{dir="ltr"}
  **[comment]{dir="ltr"}**   [\\'.\*\|REM\\s.\* (i)]{dir="ltr"}

[]{dir="ltr"}

[Note: **(i)** stands for ignore case.]{dir="ltr"}
