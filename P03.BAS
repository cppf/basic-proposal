DECLARE FUNCTION isprime% (N AS INTEGER)
DIM N, i, sum AS INTEGER

CLS
INPUT "N: ", N%

sum = 0
FOR i = 2 TO N% - 1
IF isprime%(i%) = 1 THEN sum = sum + i
NEXT
PRINT sum

FUNCTION isprime% (N AS INTEGER)
DIM i AS INTEGER

isprime% = 1
FOR i = 2 TO N - 1
IF N MOD i = 0 THEN
isprime% = 0
EXIT FUNCTION
END IF
NEXT

END FUNCTION

