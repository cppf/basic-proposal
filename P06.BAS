DECLARE SUB insertionsort (a() AS DOUBLE)
DIM alen, i AS INTEGER

CLS
INPUT "A length: ", alen

DIM a(alen) AS DOUBLE
FOR i = 1 TO alen
PRINT "A ["; i; "]: ";
INPUT a(i)
NEXT
PRINT

insertionsort a()
PRINT "A ["; alen; "]:"
FOR i = 1 TO alen
PRINT a(i)
NEXT

SUB insertionsort (a() AS DOUBLE)
DIM al, i, mi AS INTEGER
DIM m AS DOUBLE

al = UBOUND(a)
FOR i = 1 TO al
m = a(i)
mi = i

FOR j = i + 1 TO al
IF a(j) < m THEN
m = a(j)
mi = j
END IF
NEXT

a(mi) = a(i)
a(i) = m
NEXT
END SUB

