<span dir="ltr">PHASE 1: MiniBASIC DESIGN</span>

<span dir="ltr">Subhajit Sahu (2018801013)</span>

<span dir="ltr"></span>

<span dir="ltr">MiniBASIC is a subset of QuickBASIC. It is thus a
case-insensitive procedural programming language that is easy to program
with. Unlike C, it has no “main” function, and statements can be
executed right away. Also functions cannot access global variables by
default, unless specified with the **SHARED** keyword.</span>

<span dir="ltr"></span>

<span dir="ltr">Here are a few quick examples:</span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">‘this is a comment</span></p>
<p><span dir="ltr">PRINT “Monsoon 2019”</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

|                                     |
| ----------------------------------- |
| <span dir="ltr">Monsoon 2019</span> |

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">CLS</span></p>
<p><span dir="ltr">INPUT “Name: “, name$</span></p>
<p><span dir="ltr">PRINT “Hello ”; name$</span></p>
<p><span dir="ltr">‘CLS =&gt; clear screen</span></p>
<p><span dir="ltr">‘name$ =&gt; name is a STRING</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">Name: Raja</span></p>
<p><span dir="ltr">Hello Raja</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">CLS</span></p>
<p><span dir="ltr">INPUT “N: “, n%</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">sum% = 0</span></p>
<p><span dir="ltr">FOR i% = 1 TO n%</span></p>
<p><span dir="ltr">sum% = sum% + i% ^ 3</span></p>
<p><span dir="ltr">NEXT</span></p>
<p><span dir="ltr">PRINT “Sigma n^3: “; sum</span></p>
<p><span dir="ltr">‘n% =&gt; n is an INTEGER</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">N: 3</span></p>
<p><span dir="ltr">Sigma n^3: 36</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">DECLARE FUNCTION isprime%(n AS INTEGER)</span></p>
<p><span dir="ltr">DIM n AS INTEGER</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">CLS</span></p>
<p><span dir="ltr">INPUT “N: “, n</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">IF isprime%(n) = 1 THEN</span></p>
<p><span dir="ltr">PRINT n; “ is prime”</span></p>
<p><span dir="ltr">ELSE</span></p>
<p><span dir="ltr">PRINT n; “ is not prime”</span></p>
<p><span dir="ltr">END IF</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">FUNCTION isprime%(n as INTEGER)</span></p>
<p><span dir="ltr">DIM i as INTEGER</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">isprime% = 0</span></p>
<p><span dir="ltr">FOR i = 2 TO n - 1</span></p>
<p><span dir="ltr">IF n MOD i = 0 THEN EXIT FUNCTION</span></p>
<p><span dir="ltr">NEXT</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">isprime% = 1</span></p>
<p><span dir="ltr">END FUNCTION</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">N: 7</span></p>
<p><span dir="ltr">7 is prime</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

**<span dir="ltr">DATA TYPES</span>**

<span dir="ltr"></span>

<span dir="ltr">Datatypes in MiniBASIC can be specified either through
variable name suffixes or by using the **DIM** keyword. Single and
multidimensional arrays can be specified using the **DIM** keyword, and
may later be resized with **REDIM** or freed with **ERASE**. Arrays is
MiniBASIC can start with 1, unlike C. The size of a particular dimension
of the array can be found using **UBOUND** function.</span>

<span dir="ltr"></span>

| **<span dir="ltr">SUFFIX</span>** | **<span dir="ltr">TYPE NAME</span>** |
| --------------------------------- | ------------------------------------ |
| <span dir="ltr">%</span>          | <span dir="ltr">INTEGER</span>       |
| <span dir="ltr">&</span>          | <span dir="ltr">UNSIGNED</span>      |
| <span dir="ltr">\!</span>         | <span dir="ltr">SINGLE</span>        |
| <span dir="ltr">\#</span>         | <span dir="ltr">DOUBLE</span>        |
| <span dir="ltr">$</span>          | <span dir="ltr">STRING</span>        |
| <span dir="ltr">@</span>          | <span dir="ltr">CHARACTER</span>     |
| <span dir="ltr">?</span>          | <span dir="ltr">BOOLEAN</span>       |

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">‘define a string using suffix</span></p>
<p><span dir="ltr">name$ = “ajit doval”</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘define a double using DIM</span></p>
<p><span dir="ltr">DIM article AS DOUBLE</span></p>
<p><span dir="ltr">article = 370.0</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘define a 1D integer array</span></p>
<p><span dir="ltr">DIM votes(29) AS INTEGER</span></p>
<p><span dir="ltr">votes(1) = 34</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘define a 3D single array</span></p>
<p><span dir="ltr">DIM heat(10, 10, 10) AS SINGLE</span></p>
<p><span dir="ltr">heat(10, 10, 10) = 0.8</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘resize votes array</span></p>
<p><span dir="ltr">REDIM votes(28)</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

**<span dir="ltr">ARITHMETIC OPERATORS</span>**

<span dir="ltr"></span>

<span dir="ltr">The following arithmetic and boolean operators can be
used:</span>

<span dir="ltr"></span>

<span dir="ltr"></span>

| **<span dir="ltr">OPERATOR</span>**                           | **<span dir="ltr">EXAMPLE</span>** |
| ------------------------------------------------------------- | ---------------------------------- |
| <span dir="ltr">Exclusive-Or</span>                           | <span dir="ltr">a **XOR** b</span> |
| <span dir="ltr">Or</span>                                     | <span dir="ltr">a **OR** b</span>  |
| <span dir="ltr">Modulus</span>                                | <span dir="ltr">a **MOD** b</span> |
| <span dir="ltr">Implication</span>                            | <span dir="ltr">a **IMP** b</span> |
| <span dir="ltr">Equivalence</span>                            | <span dir="ltr">a **EQV** b</span> |
| <span dir="ltr">And</span>                                    | <span dir="ltr">a **AND** b</span> |
| <span dir="ltr">Not</span>                                    | <span dir="ltr">**NOT** a</span>   |
| <span dir="ltr">Integer divide</span>                         | <span dir="ltr">a **\\** b</span>  |
| <span dir="ltr">Power</span>                                  | <span dir="ltr">a **^** b</span>   |
| <span dir="ltr">Others (+ - \* / = \<\> \< \> \<= \>=)</span> | <span dir="ltr"></span>            |

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

**<span dir="ltr">CONTROL STATEMENTS</span>**

<span dir="ltr"></span>

<span dir="ltr">**IF**-**THEN**-**ELSE**, which is used for conditional
execution / branching, can be used with both single line and block
formats. Looping is possible through the use of the convenient
**FOR**-**NEXT** loop. Other alternatives include **WHILE**-**WEND**,
and **DO**-**LOOP** which can be used for either entry or exit control.
Ternary operator is achievable through a single line **IF**.</span>

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">‘single line if</span></p>
<p><span dir="ltr">IF 1 = 1 THEN PRINT “Math wins” ELSE PRINT “Random wins”</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘block if</span></p>
<p><span dir="ltr">IF 0 = 1 THEN</span></p>
<p><span dir="ltr">PRINT “0 = 1”</span></p>
<p><span dir="ltr">ELSEIF 1 = 1 THEN</span></p>
<p><span dir="ltr">PRINT “1 = 1”</span></p>
<p><span dir="ltr">ELSE</span></p>
<p><span dir="ltr">PRINT “Neither”</span></p>
<p><span dir="ltr">END IF</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘for loop</span></p>
<p><span dir="ltr">FOR i = 1 TO 10 STEP 2</span></p>
<p><span dir="ltr">PRINT i</span></p>
<p><span dir="ltr">NEXT</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘exit for loop</span></p>
<p><span dir="ltr">FOR i = 1 to 10 STEP 2</span></p>
<p><span dir="ltr">PRINT i</span></p>
<p><span dir="ltr">IF i &gt; 5 THEN EXIT FOR</span></p>
<p><span dir="ltr">NEXT</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘while loop</span></p>
<p><span dir="ltr">i = 1</span></p>
<p><span dir="ltr">WHILE i &lt;= 10</span></p>
<p><span dir="ltr">PRINT i</span></p>
<p><span dir="ltr">i = i + 2</span></p>
<p><span dir="ltr">WEND</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘do loop (entry control)</span></p>
<p><span dir="ltr">i = 12</span></p>
<p><span dir="ltr">DO WHILE i &lt;= 10</span></p>
<p><span dir="ltr">PRINT i</span></p>
<p><span dir="ltr">IF i &gt; 5 THEN EXIT DO</span></p>
<p><span dir="ltr">LOOP</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘do loop (exit control)</span></p>
<p><span dir="ltr">i = 12</span></p>
<p><span dir="ltr">DO</span></p>
<p><span dir="ltr">PRINT i</span></p>
<p><span dir="ltr">LOOP UNTIL i &gt; 10</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘ternary condition</span></p>
<p><span dir="ltr">i = 12</span></p>
<p><span dir="ltr">IF i &lt;= 10 THEN ok = 1 ELSE ok = 0</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

**<span dir="ltr">FUNCTIONS</span>**

<span dir="ltr"></span>

<span dir="ltr">In MIniBASIC, procedures which return a value are called
**FUNCTION**s, and which do not return any values are called
**SUB**routines. Arguments to these are passed by reference by default,
and can be passed by value using **BYVAL**. The return value of function
is set by using the function name as a variable, and setting its value
(before exit). Function names require a type suffix in order to specify
the returned data type. Both subroutines and functions must be declared
before being used in the program. Usually function / subroutine
definition is placed at the end of the program.</span>

<span dir="ltr"></span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">DECLARE SUB printlines(n AS INTEGER)</span></p>
<p><span dir="ltr">DECLARE FUNCTION countspaces%(s AS STRING)</span></p>
<p><span dir="ltr">DECLARE FUNCTION factorial%(n AS INTEGER)</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">CLS</span></p>
<p><span dir="ltr">PRINT “Printing 3 empty lines”</span></p>
<p><span dir="ltr">printlines 3</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">name$ = “harry kumar potter”</span></p>
<p><span dir="ltr">PRINT “Spaces in “; name$; “: “; countspaces%(name$)</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">‘a recursive function</span></p>
<p><span dir="ltr">num% = 6</span></p>
<p><span dir="ltr">PRINT “Factorial of”; n; “: “; factorial%(num%)</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">SUB printlines(n AS INTEGER)</span></p>
<p><span dir="ltr">FOR i% = 1 TO n</span></p>
<p><span dir="ltr">PRINT</span></p>
<p><span dir="ltr">NEXT</span></p>
<p><span dir="ltr">END SUB</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">FUNCTION countspaces%(s AS STRING)</span></p>
<p><span dir="ltr">count% = 0</span></p>
<p><span dir="ltr">FOR i% = 1 TO LEN(s)</span></p>
<p><span dir="ltr">IF MID$(s, i%, 1) = “ “ THEN count% = count% + 1</span></p>
<p><span dir="ltr">NEXT</span></p>
<p><span dir="ltr">countspaces% = count%</span></p>
<p><span dir="ltr">END FUNCTION</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">FUNCTION factorial%(n AS INTEGER)</span></p>
<p><span dir="ltr">factorial% = 1</span></p>
<p><span dir="ltr">IF n &lt;= 1 THEN EXIT FUNCTION</span></p>
<p><span dir="ltr">factorial% = n * factorial%(n - 1)</span></p>
<p><span dir="ltr">END FUNCTION</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

**<span dir="ltr">I/O ROUTINES</span>**

<span dir="ltr"></span>

<span dir="ltr">Reading from, and writing to files can be done using a
very similar syntax of **INPUT** and **PRINT**. All file operations are
performed through file numbers. A file needs to be opened before reading
or writing to it, and it must be closed after all such operations are
complete in order to ensure properly saved on disk.</span>

<span dir="ltr"></span>

<table>
<tbody>
<tr class="odd">
<td><p><span dir="ltr">PRINT “Vote count:”</span></p>
<p><span dir="ltr">OPEN “votes.csv” FOR INPUT AS 1</span></p>
<p><span dir="ltr">WHILE NOT EOF(1)</span></p>
<p><span dir="ltr">INPUT #1, state$, count%</span></p>
<p><span dir="ltr">PRINT state$; “ provided”; count%; “ votes”</span></p>
<p><span dir="ltr">WEND</span></p>
<p><span dir="ltr">CLOSE #1</span></p>
<p><span dir="ltr">PRINT</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">OPEN “expenses.txt” FROM APPEND AS 2</span></p>
<p><span dir="ltr">PRINT #2, “butter”, 450</span></p>
<p><span dir="ltr">PRINT #2, “cashew”, 950</span></p>
<p><span dir="ltr">CLOSE #2</span></p>
<p><span dir="ltr"></span></p>
<p><span dir="ltr">PRINT “Alice in Wonderland:”</span></p>
<p><span dir="ltr">OPEN “alice.txt” FOR INPUT AS 2</span></p>
<p><span dir="ltr">DO WHILE NOT EOF(2)</span></p>
<p><span dir="ltr">LINE INPUT #2, line$</span></p>
<p><span dir="ltr">PRINT line$</span></p>
<p><span dir="ltr">LOOP</span></p>
<p><span dir="ltr">CLOSE #2</span></p>
<p><span dir="ltr">PRINT</span></p></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr">PTO</span>

<span dir="ltr"></span>

**<span dir="ltr">MACRO SYNTAX</span>**

<span dir="ltr"></span>

<span dir="ltr">Here is the macro syntax of MiniBASIC expressed in
context-free grammar:</span>

<span dir="ltr"></span>

<table>
<thead>
<tr class="header">
<th><strong><span dir="ltr">S</span></strong></th>
<th><span dir="ltr"><strong>main_stmt</strong> <strong>S |</strong> ϶</span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span dir="ltr"><strong>main_stmt</strong></span></td>
<td><span dir="ltr"><strong>declare</strong> | <strong>sub</strong> | <strong>function</strong> | <strong>stmt</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">declare</span></strong></td>
<td><span dir="ltr"><strong>declare_sub</strong> | <strong>declare_fn</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">declare_sub</span></strong></td>
<td><span dir="ltr"><em>DECLARE SUB</em> <strong>name</strong> <em>(</em><strong>lpar</strong><em>)</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">declare_fn</span></strong></td>
<td><span dir="ltr"><em>DECLARE FUNCTION</em> <strong>name_t</strong> <em>(</em><strong>lpar</strong><em>)</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">sub</span></strong></td>
<td><p><span dir="ltr"><em>SUB</em> <strong>name</strong> <em>(</em><strong>lpar</strong><em>)</em></span></p>
<p><strong><span dir="ltr">lstmt</span></strong></p>
<p><span dir="ltr"><em>END SUB</em></span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">function</span></strong></td>
<td><p><span dir="ltr"><em>FUNCTION</em> <strong>name_t</strong> <em>(</em><strong>lpar</strong><em>)</em></span></p>
<p><strong><span dir="ltr">lstmt</span></strong></p>
<p><em><span dir="ltr">END FUNCTION</span></em></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lstmt</span></strong></td>
<td><p><strong><span dir="ltr">stmt</span></strong></p>
<p><span dir="ltr"><strong>lstmt</strong> | ϶</span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">stmt</span></strong></td>
<td><span dir="ltr"><strong>comment</strong> | <strong>sub_call</strong> | <strong>define</strong> | <strong>assign</strong> | <strong>io</strong> | <strong>branch</strong> | <strong>loop</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">sub_call</span></strong></td>
<td><span dir="ltr"><strong>name</strong> <strong>lexpr</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">fn_call</span></strong></td>
<td><span dir="ltr"><strong>name_t</strong> | <strong>name_t</strong> <em>(</em><strong>lexpr</strong><em>)</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">define</span></strong></td>
<td><span dir="ltr"><strong>dim</strong> | <strong>redim</strong> | <strong>shared</strong> | <strong>static</strong> | <strong>type</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">dim</span></strong></td>
<td><span dir="ltr"><em>DIM</em> <strong>dim_shared</strong> <strong>ldef1</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">dim_shared</span></strong></td>
<td><span dir="ltr"><em>SHARED</em> | ϶</span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">redim</span></strong></td>
<td><span dir="ltr"><em>REDIM</em> <strong>larr1</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">shared</span></strong></td>
<td><span dir="ltr"><em>SHARED</em> <strong>lpar1</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">static</span></strong></td>
<td><span dir="ltr"><em>STATIC</em> <strong>lpar1</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">type</span></strong></td>
<td><p><span dir="ltr">TYPE <strong>name</strong></span></p>
<p><strong><span dir="ltr">ldef1_blk</span></strong></p>
<p><span dir="ltr">END TYPE</span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">assign</span></strong></td>
<td><span dir="ltr"><strong>let</strong> | <strong>const</strong> | <strong>assign_dir</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">let</span></strong></td>
<td><span dir="ltr"><em>LET</em> <strong>assign_dir</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">const</span></strong></td>
<td><span dir="ltr"><em>CONST</em> <strong>assign_dir</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">assign_dir</span></strong></td>
<td><span dir="ltr"><strong>var_t</strong> <em>=</em> <strong>expr</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">io</span></strong></td>
<td><span dir="ltr"><strong>input</strong> | <strong>print</strong> | <strong>open</strong> | <strong>close</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">input</span></strong></td>
<td><span dir="ltr"><strong>input_cmd</strong> | <strong>input_file</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">input_cmd</span></strong></td>
<td><span dir="ltr"><em>INPUT</em> <strong>prompt</strong> <strong>lvar</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">input_file</span></strong></td>
<td><span dir="ltr"><em>INPUT</em> <strong>fnum_h</strong><em>,</em> <strong>lvar</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">prompt</span></strong></td>
<td><span dir="ltr"><strong>string</strong><em>,</em> | <strong>string</strong><em>;</em> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">print</span></strong></td>
<td><strong><span dir="ltr">print_cmd | print_file</span></strong></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">print_cmd</span></strong></td>
<td><span dir="ltr"><em>PRINT</em> <strong>print_fmt</strong> <strong>print_lexpr</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">print_file</span></strong></td>
<td><span dir="ltr"><em>PRINT</em> <strong>fnum_h</strong>, <strong>print_fmt</strong> <strong>print_lexpr</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">print_fmt</span></strong></td>
<td><span dir="ltr"><em>USING</em> <strong>string</strong><em>;</em> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">print_lexpr</span></strong></td>
<td><span dir="ltr"><strong>expr</strong><em>,</em> <strong>print_lexpr</strong> | <strong>expr</strong><em>;</em> <strong>print_lexpr</strong> | ϶</span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">open</span></strong></td>
<td><span dir="ltr"><strong>open_long</strong> | <strong>open_short</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">open_long</span></strong></td>
<td><span dir="ltr"><em>OPEN</em> <strong>fname</strong> <strong>fmode1</strong> <strong>facc</strong> <em>AS</em> <strong>fnum</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">open_short</span></strong></td>
<td><span dir="ltr"><em>OPEN</em> <strong>fmode2</strong><em>,</em> <strong>fnum_h</strong>, <strong>fname</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">fname</span></strong></td>
<td><strong><span dir="ltr">expr</span></strong></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">fmode1</span></strong></td>
<td><span dir="ltr"><em>FOR</em> <strong>fmode1_type</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">fmode1_type</span></strong></td>
<td><span dir="ltr"><em>OUTPUT</em> | <em>INPUT</em> | <em>RANDOM</em> | <em>BINARY</em> | <em>APPEND</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">facc</span></strong></td>
<td><span dir="ltr"><em>ACCESS</em> <strong>facc_type</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">facc_type</span></strong></td>
<td><span dir="ltr"><em>READ</em> | <em>WRITE</em> | <em>READ WRITE</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">fmode2</span></strong></td>
<td><span dir="ltr"><em>“O”</em> | <em>“I”</em> | <em>“R”</em> | <em>“B”</em> | <em>“A”</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">close</span></strong></td>
<td><span dir="ltr"><em>CLOSE</em> <strong>lfnum1</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">branch</span></strong></td>
<td><span dir="ltr"><strong>branch_dir</strong> | <strong>branch_cond</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">branch_dir</span></strong></td>
<td><span dir="ltr"><strong>goto</strong> | <strong>gosub</strong> | <strong>return</strong> | <strong>exit</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">goto</span></strong></td>
<td><span dir="ltr">GOTO <strong>label</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">gosub</span></strong></td>
<td><span dir="ltr">GOSUB <strong>label</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">return</span></strong></td>
<td><span dir="ltr">RETURN | RETURN <strong>label</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">exit</span></strong></td>
<td><span dir="ltr">EXIT <strong>exit_from</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">exit_from</span></strong></td>
<td><span dir="ltr">DO | FOR | FUNCTION | SUB</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">branch_cond</span></strong></td>
<td><span dir="ltr"><strong>if</strong> | <strong>select</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">if</span></strong></td>
<td><span dir="ltr"><strong>if_then</strong> | <strong>if_blk</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">if_then</span></strong></td>
<td><span dir="ltr"><em>IF</em> <strong>cond</strong> <strong>then_stmt</strong> <strong>else_stmt</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">if_blk</span></strong></td>
<td><p><span dir="ltr">IF <strong>cond</strong> <strong>then_blk</strong></span></p>
<p><strong><span dir="ltr">lelseif_blk</span></strong></p>
<p><strong><span dir="ltr">else_blk</span></strong></p>
<p><strong><span dir="ltr">endif</span></strong></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">then_stmt</span></strong></td>
<td><span dir="ltr"><em>THEN</em> <strong>stmt</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">then_blk</span></strong></td>
<td><p><span dir="ltr"><em>THEN</em></span></p>
<p><strong><span dir="ltr">lstmt</span></strong></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lelseif_blk</span></strong></td>
<td><p><strong><span dir="ltr">elseif_blk</span></strong></p>
<p><span dir="ltr"><strong>lelseif_blk</strong> | ϶</span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">elseif_blk</span></strong></td>
<td><p><span dir="ltr"><em>ELSEIF</em> <strong>cond</strong></span></p>
<p><span dir="ltr"><strong>lstmt</strong> | ϶</span></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">else_stmt</span></strong></td>
<td><span dir="ltr"><em>ELSE</em> <strong>stmt</strong> | ϶</span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">else_blk</span></strong></td>
<td><p><em><span dir="ltr">ELSE</span></em></p>
<p><span dir="ltr"><strong>lstmt</strong> | ϶</span></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">endif</span></strong></td>
<td><span dir="ltr"><em>ENDIF</em> | <em>END IF</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">select</span></strong></td>
<td><p><span dir="ltr"><em>SELECT CASE</em> <strong>expr</strong></span></p>
<p><strong><span dir="ltr">lcase</span></strong></p>
<p><em><span dir="ltr">END SELECT</span></em></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lcase</span></strong></td>
<td><p><span dir="ltr"><strong>case_expr</strong></span></p>
<p><span dir="ltr"><strong>lcase</strong>? | <strong>case_else</strong></span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">case_expr</span></strong></td>
<td><p><span dir="ltr"><em>CASE</em> <strong>expr</strong> (<em>TO</em> <strong>expr</strong>)?</span></p>
<p><strong><span dir="ltr">lstmt</span></strong></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">case_else</span></strong></td>
<td><p><span dir="ltr"><em>CASE ELSE</em></span></p>
<p><strong><span dir="ltr">lstmt</span></strong></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">loop</span></strong></td>
<td><span dir="ltr"><strong>for</strong> | <strong>while</strong> | <strong>do</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">for</span></strong></td>
<td><p><span dir="ltr"><em>FOR</em> <strong>var</strong> <em>=</em> <strong>expr</strong> <em>TO</em> <strong>expr</strong> (<em>STEP</em> <strong>expr</strong>)?</span></p>
<p><span dir="ltr"><strong>lstmt</strong></span></p>
<p><span dir="ltr"><em>NEXT</em> <strong>var</strong>?</span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">while</span></strong></td>
<td><p><span dir="ltr"><em>WHILE</em> <strong>cond</strong></span></p>
<p><span dir="ltr"><strong>lstmt</strong></span></p>
<p><em><span dir="ltr">WEND</span></em></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">do</span></strong></td>
<td><span dir="ltr"><strong>do_entry</strong> | <strong>do_exit</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">do_entry</span></strong></td>
<td><p><span dir="ltr"><em>DO</em> (<em>WHILE</em> | <em>UNTIL</em>) <strong>cond</strong></span></p>
<p><span dir="ltr"><strong>lstmt</strong></span></p>
<p><em><span dir="ltr">LOOP</span></em></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">do_exit</span></strong></td>
<td><p><span dir="ltr"><em>DO</em></span></p>
<p><span dir="ltr"><strong>lstmt</strong></span></p>
<p><span dir="ltr"><em>LOOP</em> (<em>WHILE</em> | <em>UNTIL</em>) <strong>cond</strong></span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">name_t</span></strong></td>
<td><strong><span dir="ltr">name dtype_s</span></strong></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">sym</span></strong></td>
<td><span dir="ltr"><strong>name | name</strong> <em>()</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">sym_t</span></strong></td>
<td><span dir="ltr"><strong>name_t | name_t</strong> <em>()</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">var</span></strong></td>
<td><span dir="ltr"><strong>name</strong> | <strong>name</strong> <em>(</em><strong>lexpr1</strong><em>)</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">var_t</span></strong></td>
<td><span dir="ltr"><strong>name_t</strong> | <strong>name_t</strong> <em>(</em><strong>lexpr1</strong><em>)</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">arr_t</span></strong></td>
<td><span dir="ltr"><strong>name_t</strong> <em>(</em><strong>lexpr1</strong><em>)</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">par</span></strong></td>
<td><span dir="ltr"><strong>sym</strong> <em>AS</em> <strong>dtype_n</strong> | <strong>sym_t</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">def</span></strong></td>
<td><span dir="ltr"><strong>var</strong> <em>AS</em> <strong>dtype_n</strong> | <strong>var_t</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">larr</span></strong></td>
<td><span dir="ltr"><strong>arr_t</strong>, <strong>larr1</strong> | <strong>arr_t</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">larr1</span></strong></td>
<td><span dir="ltr"><strong>arr_t</strong>, <strong>larr1</strong> | <strong>arr_t</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">lvar</span></strong></td>
<td><span dir="ltr"><strong>var</strong><em>,</em> <strong>lvar1</strong> | <strong>var</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lvar1</span></strong></td>
<td><span dir="ltr"><strong>var</strong> <strong>lvar1</strong> | <strong>var</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">lpar</span></strong></td>
<td><span dir="ltr"><strong>par</strong><em>,</em> <strong>lpar1</strong> | <strong>par</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lpar1</span></strong></td>
<td><span dir="ltr"><strong>par</strong><em>,</em> <strong>lpar1</strong> | <strong>par</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">ldef</span></strong></td>
<td><span dir="ltr"><strong>def</strong>, <strong>ldef1</strong> | <strong>def</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">ldef1</span></strong></td>
<td><span dir="ltr"><strong>def</strong>, <strong>ldef1</strong> | <strong>def</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">ldef_blk</span></strong></td>
<td><p><span dir="ltr"><strong>def</strong></span></p>
<p><span dir="ltr"><strong>ldef1_blk</strong> | <strong>def</strong> | ϶</span></p></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">ldef1_blk</span></strong></td>
<td><p><strong><span dir="ltr">def</span></strong></p>
<p><span dir="ltr"><strong>ldef1_blk</strong> | <strong>def</strong></span></p></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">lexpr</span></strong></td>
<td><span dir="ltr"><strong>expr</strong>, <strong>lexpr1</strong> | <strong>expr</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lexpr1</span></strong></td>
<td><strong><span dir="ltr">expr, lexpr1 | expr</span></strong></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">fnum</span></strong></td>
<td><span dir="ltr"><strong>fnum_h</strong> | <strong>num</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">fnum_h</span></strong></td>
<td><span dir="ltr"><em>#</em><strong>num</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">lfnum</span></strong></td>
<td><span dir="ltr"><strong>fnum</strong>, <strong>lfnum1</strong> | <strong>fnum</strong> | ϶</span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">lfnum1</span></strong></td>
<td><span dir="ltr"><strong>fnum</strong>, <strong>lfnum1</strong> | <strong>fnum</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">dtype_n</span></strong></td>
<td><span dir="ltr"><em>INTEGER</em> | <em>UNSIGNED</em> | <em>SINGLE</em> | <em>DOUBLE</em> | <em>STRING</em> | <em>CHAR</em> | <em>BOOLEAN</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">dtype_s</span></strong></td>
<td><span dir="ltr"><em>%</em> | <em>&amp;</em> | <em>!</em> | <em>#</em> | <em>$</em> | <em>@</em> | <em>?</em> | ϶</span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">cond</span></strong></td>
<td><strong><span dir="ltr">expr</span></strong></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">bin_log</span></strong></td>
<td><span dir="ltr"><em>AND</em> | <em>OR</em> | <em>XOR</em> | <em>IMP</em> | <em>EQV</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">bin_ari</span></strong></td>
<td><em><span dir="ltr">MOD</span></em></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">bin_add</span></strong></td>
<td><span dir="ltr"><em>+</em> | <em>-</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">bin_mul</span></strong></td>
<td><span dir="ltr"><em>*</em> | <em>/</em> | <em>\</em></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">bin_pow</span></strong></td>
<td><em><span dir="ltr">^</span></em></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">una_log</span></strong></td>
<td><em><span dir="ltr">NOT</span></em></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">una_add</span></strong></td>
<td><span dir="ltr"><em>+</em> | <em>-</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">expr</span></strong></td>
<td><span dir="ltr"><strong>expr bin_log expr</strong> | <strong>expr_1</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">expr_1</span></strong></td>
<td><span dir="ltr"><strong>expr bin_ari expr</strong> | <strong>expr_2</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">expr_2</span></strong></td>
<td><span dir="ltr"><strong>expr bin_add expr</strong> | <strong>expr_3</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">expr_3</span></strong></td>
<td><span dir="ltr"><strong>expr bin_mul expr</strong> | <strong>expr_4</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">expr_4</span></strong></td>
<td><span dir="ltr"><strong>expr bin_pow expr</strong> | <strong>expr_5</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">expr_5</span></strong></td>
<td><span dir="ltr"><strong>una_log expr</strong> | <strong>expr_6</strong></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">expr_6</span></strong></td>
<td><span dir="ltr"><strong>una_ari expr</strong> | <strong>expr_7</strong></span></td>
</tr>
<tr class="odd">
<td><strong><span dir="ltr">expr_7</span></strong></td>
<td><span dir="ltr"><strong>litr</strong> | <strong>var_t</strong> | <strong>fn_call</strong> | <em>(</em><strong>expr</strong><em>)</em></span></td>
</tr>
<tr class="even">
<td><strong><span dir="ltr">litr</span></strong></td>
<td><span dir="ltr"><strong>integer</strong> | <strong>float</strong> | <strong>string</strong> | <strong>boolean</strong></span></td>
</tr>
</tbody>
</table>

<span dir="ltr"></span>

<span dir="ltr"></span>

<span dir="ltr"></span>

**<span dir="ltr">MICRO SYNTAX</span>**

<span dir="ltr"></span>

<span dir="ltr">Here is the micro syntax of MiniBASIC expressed in
regular expressions:</span>

<span dir="ltr"></span>

<span dir="ltr"></span>

| **<span dir="ltr">name</span>**    | <span dir="ltr">\[A-Za-z\_\]\\w\*</span>                                    |
| ---------------------------------- | --------------------------------------------------------------------------- |
| <span dir="ltr">**integer**</span> | <span dir="ltr">\[-+\]?\\d+</span>                                          |
| **<span dir="ltr">float</span>**   | <span dir="ltr">\[-+\]?(\[0-9\]\*\[.\])?\[0-9\]+(\[eE\]\[-+\]?\\d+)?</span> |
| **<span dir="ltr">string</span>**  | <span dir="ltr">\\”.\*?\\”</span>                                           |
| **<span dir="ltr">boolean</span>** | <span dir="ltr">TRUE|FALSE (i)</span>                                       |
| **<span dir="ltr">comment</span>** | <span dir="ltr">\\‘.\*|REM\\s.\* (i)</span>                                 |

<span dir="ltr"></span>

<span dir="ltr">Note: **(i)** stands for ignore case.</span>
