CLS
INPUT "Z: ", z
PRINT

num = 0
FOR c = 2 TO z
FOR b = c - 1 TO c / SQR(2) STEP -1
a = SQR(c * c - b * b)
IF a = INT(a) THEN
PRINT a; b; c
num = num + 1
END IF
NEXT
NEXT
PRINT "Total:"; num

