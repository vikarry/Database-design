SELECT *
FROM movies
;

SELECT *
FROM moviegenres
;

SELECT *
FROM users
;

SELECT *
FROM releaselanguages
;

SELECT *
FROM review
ORDER BY movid, reviewdate
;

SELECT *
FROM movies JOIN moviegenres ON movies.movid = moviegenres.movid
         LEFT OUTER JOIN review
                   ON movies.movid = review.movid


ORDER BY movies.movid
;

SELECT MAX(max)
FROM
    (
        SELECT  releasedate AS max
        FROM movies
        GROUP BY movid
    )X
;