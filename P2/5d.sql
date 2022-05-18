WITH stlouis (practionerid) AS (
    SELECT practionerid
    FROM midwife m
             JOIN institution i ON m.institid = i.institid
    WHERE i.name = 'Lac-Saint-Louis'
)

SELECT mhealthid, mname, mphone
FROM mother
WHERE mhealthid IN (SELECT p.mhealthid
                    FROM parents p
                    WHERE p.pid IN (
                        SELECT pid
                        FROM pregnancy
                        WHERE primidwife IN (SELECT practionerid
                                             FROM stlouis)
                           OR backmidwife IN (SELECT practionerid
                                              FROM stlouis)
                        INTERSECT

                        SELECT pid
                        FROM baby
                        WHERE birthday IS NULL
                    ))
;

SELECT *
FROM pregnancy;

SELECT *
FROM parents;