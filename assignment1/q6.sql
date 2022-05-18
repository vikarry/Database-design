(SELECT title, releasedate
 FROM movies
 EXCEPT
 SELECT title, releasedate
 FROM releaselanguages
          JOIN movies
               ON releaselanguages.movid = movies.movid
 WHERE language = 'English'
)
INTERSECT

SELECT title, releasedate
FROM releaselanguages
         JOIN movies
              ON releaselanguages.movid = movies.movid
WHERE language = 'French'
ORDER BY releasedate, title
;