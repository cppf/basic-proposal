DECLARE SUB adduniquewords (u() AS STRING, ul AS INTEGER, l AS STRING)
DECLARE SUB addunique (u() AS STRING, ul AS INTEGER, w AS STRING)


DIM u(2000) AS STRING
DIM file, l AS STRING
DIM ul AS INTEGER
DIM i AS INTEGER

CLS
INPUT "File: ", file$
PRINT

ul = 0
OPEN file$ FOR INPUT AS 1
DO WHILE NOT EOF(1)
LINE INPUT #1, l$
adduniquewords u(), ul, l$
LOOP
CLOSE #1

PRINT "Unique:"; ul
FOR i = 1 TO ul
PRINT u(i)
NEXT

SUB addunique (u() AS STRING, ul AS INTEGER, w AS STRING)
DIM i AS INTEGER

FOR i = 1 TO ul
IF u(i) = w THEN EXIT SUB
NEXT
ul = ul + 1
u(ul) = w
END SUB

SUB adduniquewords (u() AS STRING, ul AS INTEGER, l AS STRING)
DIM wi, wl AS INTEGER
DIM i, c AS INTEGER
DIM w AS STRING

wi = 0
wl = 0
l = l + " "
FOR i = 1 TO LEN(l)
c = ASC(MID$(l, i, 1))

IF (c >= 48 AND c < 58) OR (c >= 65 AND c < 91) OR (c >= 97 AND c < 123) THEN
wl = wl + 1
ELSE

IF wl > 0 THEN
w$ = MID$(l, wi + 1, wl)
addunique u(), ul, w$
END IF

wi = i
wl = 0
END IF
NEXT

END SUB

