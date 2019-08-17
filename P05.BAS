DIM N, w, i, j AS INTEGER

CLS
INPUT "N: ", N
PRINT

FOR w = 1 TO N
FOR i = 1 TO N - w + 1
FOR j = i TO i + w - 1
PRINT j;
NEXT
PRINT
NEXT
NEXT

