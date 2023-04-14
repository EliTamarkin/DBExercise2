SELECT DISTINCT name, number
FROM members NATURAL JOIN memberInKnesset NATURAL JOIN Knessets
WHERE (startYear - birthYear > 70) AND (party = 'Likud' OR party = 'Meretz')
ORDER BY name ASC, number ASC
