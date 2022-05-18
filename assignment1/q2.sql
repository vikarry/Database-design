SELECT userid
FROM review
         JOIN movies
              ON review.movid = movies.movid
WHERE title = 'Casablanca'
ORDER BY userid
;