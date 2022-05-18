SELECT userid, email
FROM users
WHERE userid IN (WITH userinfo (userid) AS
                          (SElECT userid, r.movid
                           FROM review
                                    JOIN releaselanguages r on review.movid = r.movid
                           WHERE language = 'French'
                           EXCEPT
                           SElECT userid, r.movid
                           FROM review
                                    JOIN releaselanguages r on review.movid = r.movid
                           WHERE language <> 'French')
                 SELECT userid
                 FROM userinfo
)
ORDER BY email
;