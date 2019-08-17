DIM file AS STRING
DIM i, c AS INTEGER
DIM hist(256) AS INTEGER

CLS
INPUT "File: ", file
OPEN file FOR INPUT AS 1

DO WHILE NOT EOF(1)
LINE INPUT #1, line$

FOR i = 1 TO LEN(line$)
c = ASC(MID$(line$, i, 1))
hist(c) = hist(c) + 1
NEXT

LOOP
CLOSE #1

FOR i = 1 TO 256
IF hist(i) > 0 THEN PRINT i, hist(i)
NEXT

