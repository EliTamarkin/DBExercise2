SELECT DISTINCT number
FROM members NATURAL JOIN memberInKneset
WHERE name = 'David Ben Gurion' AND party = 'Mapai'

SELECT DISTINCT name
FROM members NATURAL JOIN memberInKneset