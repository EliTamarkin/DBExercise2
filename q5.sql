SELECT DISTINCT name
FROM (
SELECT uid,name
FROM members
WHERE birthPlace = 'Jerusalem'
EXCEPT
SELECT DISTINCT uid, name
FROM (SELECT uid, name, number as number1
     FROM members NATURAL JOIN memberInKnesset
     WHERE birthPlace = 'Jerusalem') AS R1
     NATURAL JOIN
    (SELECT uid, name, number as number2
     FROM members NATURAL JOIN memberInKnesset
     WHERE birthPlace = 'Jerusalem') AS R2
WHERE number1 != number2
) AS P
ORDER BY name ASC