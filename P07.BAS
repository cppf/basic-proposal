DECLARE FUNCTION radixsort% (a() AS INTEGER, rad AS INTEGER, dig AS INTEGER)
DIM alen, rad, dig, i AS INTEGER

CLS
INPUT "A length: ", alen

DIM a(alen) AS INTEGER
FOR i = 1 TO alen
PRINT "A ["; i; "]: ";
INPUT a(i)
NEXT
INPUT "Radix: ", rad%
PRINT

dig% = 0
WHILE radixsort%(a(), rad%, dig%) > 0
dig% = dig% + 1
WEND

PRINT "A ["; alen; "]:"
FOR i = 1 TO alen
PRINT a(i)
NEXT

FUNCTION radixsort% (a() AS INTEGER, rad AS INTEGER, dig AS INTEGER)
DIM dv, al, pre AS INTEGER
DIM i, x, r, s, p AS INTEGER

pre = 0
dv = rad ^ dig
al = UBOUND(a)
DIM b(rad, al) AS INTEGER
DIM bl(rad) AS INTEGER


FOR i = 1 TO al
p = a(i) \ dv
IF p > pre THEN pre = p
x = (p MOD rad) + 1
bl(x) = bl(x) + 1
b(x, bl(x)) = a(i)
NEXT

i = 1
FOR r = 1 TO rad
FOR s = 1 TO bl(r)
a(i) = b(r, s)
i = i + 1
NEXT
NEXT

radixsort% = pre
END FUNCTION

