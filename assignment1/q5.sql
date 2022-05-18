SELECT title, releasedate
FROM movies
WHERE movid IN (
    SELECT movid
    FROM moviegenres
    WHERE genre = 'Comedy'
    INTERSECT
    SELECT movid
    FROM moviegenres
    WHERE genre = 'Sci-Fi')
  AND (releasedate BETWEEN '2021-01-01' AND '2021-12-31')

ORDER BY releasedate, title