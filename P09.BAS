DIM arows, acols AS INTEGER
DIM brows, bcols AS INTEGER
DIM r, c AS INTEGER

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

IF arows <> brows OR acols <> bcols THEN
PRINT "ERROR: A size <> B size, cant sum!"
SYSTEM
END IF

DIM z(arows, acols) AS DOUBLE
FOR r = 1 TO arows
FOR c = 1 TO acols
z(r, c) = a(r, c) + b(r, c)
NEXT
NEXT

PRINT "Z ["; arows; "] ["; acols; "]:"
FOR r = 1 TO arows
FOR c = 1 TO acols
PRINT z(r, c),
NEXT
PRINT
NEXT

