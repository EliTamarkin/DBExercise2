SELECT DISTINCT R.name
FROM (SELECT DISTINCT name, uid
FROM members NATURAL JOIN memberInKnesset
WHERE gender = 'female' AND occupation != 'politician' AND number = 23
INTERSECT
SELECT DISTINCT  name, uid
FROM members NATURAL JOIN memberInKnesset
WHERE gender = 'female' AND occupation != 'politician' AND number = 24) as R
ORDER BY R.name ASC