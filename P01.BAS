DIM N, k, i, sum AS INTEGER

CLS
INPUT "N: ", N
INPUT "k: ", k

sum = 0
FOR i = 1 TO N
sum = sum + (i ^ k)
NEXT
PRINT sum

