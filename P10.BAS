DIM arows, acols AS INTEGER
DIM brows, bcols AS INTEGER
DIM r, c, i, sum AS INTEGER

CLS
INPUT "A rows: ", arows
INPUT "A columns: ", acols

DIM a(arows, acols) AS DOUBLE
FOR r = 1 TO arows
FOR c = 1 TO acols
PRINT "A ["; r; "] ["; c; "]: ";
INPUT a(r, c)
NEXT
NEXT
PRINT

INPUT "B rows: ", brows
INPUT "B columns: ", bcols

DIM b(brows, bcols) AS DOUBLE
FOR r = 1 TO brows
FOR c = 1 TO bcols
PRINT "B ["; r; "] ["; c; "]: ";
INPUT b(r, c)
NEXT
NEXT
PRINT

IF acols <> brows THEN
PRINT "ERROR: A columns <> B rows, cant multiply!"
SYSTEM
END IF

DIM z(arows, bcols) AS DOUBLE
FOR r = 1 TO arows
FOR c = 1 TO bcols
sum = 0
FOR i = 1 TO acols
sum = sum + a(r, i) * b(i, c)
NEXT
z(r, c) = sum
NEXT
NEXT

PRINT "Z ["; arows; "] ["; bcols; "]:"
FOR r = 1 TO arows
FOR c = 1 TO bcols
PRINT z(r, c),
NEXT
PRINT
NEXT

