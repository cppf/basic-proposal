DIM N, i, prime AS INTEGER

CLS
INPUT "N: ", N

prime = 1
FOR i = 2 TO N - 1
IF N MOD i = 0 THEN
prime = 0
EXIT FOR
END IF
NEXT
PRINT prime

