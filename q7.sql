SELECT DISTINCT number, name
FROM (
    SELECT uid, name, birthYear, number
    FROM (members NATURAL JOIN memberInKnesset) as R
    EXCEPT
    SELECT DISTINCT R1.uid, R1.name, R1.birthYear, R1.number
    FROM  (SELECT uid, name, birthYear, number
          FROM (members NATURAL JOIN memberInKnesset)) as R1,
          (SELECT uid, name, birthYear, number
          FROM (members NATURAL JOIN memberInKnesset)) as R2
    WHERE R1.birthYear > R2.birthYear AND R1.number = R2.number
    ) as P
ORDER BY number ASC, name ASC
