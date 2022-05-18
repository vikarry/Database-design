SELECT mhealthid, mname
FROM mother
WHERE mhealthid IN (SELECT mhealthid
                    FROM parents
                    WHERE pid IN (SELECT pid
                                  FROM pregnancy
                                  WHERE babynum > 1)
)
;