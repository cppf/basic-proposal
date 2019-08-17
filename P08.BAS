DECLARE SUB mergesort (a() AS DOUBLE, i0 AS INTEGER, i1 AS INTEGER)
DIM i, alen AS INTEGER

CLS
INPUT "A length: ", alen

DIM a(alen) AS DOUBLE
FOR i = 1 TO alen
PRINT "A ["; i; "]: ";
INPUT a(i)
NEXT
PRINT

mergesort a(), 1, alen
PRINT "A ["; alen; "]:"
FOR i = 1 TO alen
PRINT a(i)
NEXT

SUB mergesort (a() AS DOUBLE, i0 AS INTEGER, i1 AS INTEGER)
DIM l, m AS INTEGER
DIM i, j, k AS INTEGER

l = i1 - i0 + 1
IF l <= 1 THEN EXIT SUB
m = (i0 + i1) \ 2
mergesort a(), i0, m
mergesort a(), m + 1, i1
DIM z(l) AS DOUBLE

j = i0
k = m + 1
FOR i = 1 TO l

IF k > i1 THEN
z(i) = a(j)
j = j + 1

ELSEIF j <= m AND a(j) <= a(k) THEN
z(i) = a(j)
j = j + 1

ELSE
z(i) = a(k)
k = k + 1
END IF

NEXT

FOR i = 1 TO l
a(i0 + i - 1) = z(i)
NEXT

END SUB

