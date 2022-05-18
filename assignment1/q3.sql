(SELECT userid
 FROM review
 EXCEPT
 SELECT userid
 FROM review
          JOIN movies
               ON review.movid = movies.movid
 WHERE title = 'Ben-Hur'
   AND releasedate = '2016-08-19'


 UNION

 SELECT userid
 FROM review
          JOIN movies
               ON review.movid = movies.movid
 WHERE title = 'Ben-Hur'
   AND releasedate = '2016-08-19'
   AND rating <= 4
)

INTERSECT

SELECT userid
FROM review
         JOIN movies
              ON review.movid = movies.movid
WHERE title = 'Ben-Hur'
  AND releasedate = '1959-11-18'
  AND rating >= 7
ORDER BY userid
;

