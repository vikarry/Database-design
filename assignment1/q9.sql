SELECT COUNT(*) AS nummovies
FROM movies
WHERE movid IN (
    SELECT movid
    FROM moviegenres
    WHERE genre = 'Comedy'
)
  AND (releasedate BETWEEN '2021-01-01' AND '2021-12-31')
;

SELECT COUNT(*) AS nummovies
FROM movies
         JOIN moviegenres m on movies.movid = m.movid
WHERE genre = 'Comedy'
  AND (releasedate BETWEEN '2021-01-01' AND '2021-12-31')
;