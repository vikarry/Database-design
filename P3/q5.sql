SELECT 'Jan' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =1

UNION
SELECT 'Feb' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =2

UNION
SELECT 'Mar' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =3
UNION
SELECT 'Apr' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =4
UNION
SELECT 'May' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =5
UNION
SELECT 'Jun' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =6

UNION
SELECT 'July' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =7

UNION
SELECT 'Aug' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =8

UNION
SELECT 'Sep' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =9

UNION
SELECT 'Oct' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =10

UNION
SELECT 'Nov' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =11

UNION
SELECT 'Dec' As month, COUNT (*) AS babies
FROM baby
WHERE month(birthday) =12
;