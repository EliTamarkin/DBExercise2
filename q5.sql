SELECT DISTINCT name
FROM (
SELECT uid,name
FROM members
EXCEPT
SELECT DISTINCT uid, name
FROM (SELECT uid, name, number as number1
        FROM members NATURAL JOIN memberInKnesset) NATURAL JOIN (SELECT uid, name, number as number2
                                                                    FROM members NATURAL JOIN memberInKnesset)
WHERE number1 != number2
)