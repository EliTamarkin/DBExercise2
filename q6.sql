SELECT M.name
FROM members M
WHERE NOT EXISTS((SELECT DISTINCT K.number
                  FROM (members NATURAL JOIN memberInKnesset) K
                  WHERE K.name = 'David Ben-Gurion' AND K.party = 'Mapai')
            EXCEPT
                  (SELECT MIK.number
                   FROM memberInKnesset MIK
                   WHERE M.uid = MIK.uid AND MIK.party = 'Mapai'))
ORDER BY name ASC