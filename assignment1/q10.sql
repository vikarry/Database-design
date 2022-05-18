SELECT title, releasedate
FROM movies
WHERE movid IN (
    SELECT movid
    FROM review
    GROUP BY movid
    HAVING COUNT(*) >= 5

    INTERSECT
    SELECT movid
    FROM releaselanguages
    WHERE language = 'English'

    INTERSECT

    SELECT movid
    FROM releaselanguages
    WHERE language = 'French'
)
ORDER BY releasedate, title
;