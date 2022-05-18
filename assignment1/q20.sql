## Query No 11

SELECT title, releasedate
FROM movies
WHERE movid IN (
    SELECT movid
    FROM (SELECT movies.movid, COUNT(*)
          FROM (movies
                   LEFT OUTER JOIN review
                                   ON movies.movid = review.movid)
          GROUP BY movies.movid
          HAVING COUNT(*) < 2) AS x)
ORDER BY releasedate, title
;


## Query No 12

SELECT movies.title, movies.releasedate, COUNT(review.movid) AS "numviews"
FROM movies
         LEFT JOIN review
                   ON movies.movid = review.movid
WHERE movies.releasedate BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY movies.title, movies.releasedate
ORDER BY COUNT(review.movid) DESC, movies.releasedate, movies.title;

## Query No 13
SELECT title, releasedate
FROM movies
WHERE movid IN (
    SELECT movid
    FROM (SELECT movies.movid, COUNT(*)
          FROM (movies
                   LEFT OUTER JOIN review
                                   ON movies.movid = review.movid)
          GROUP BY movies.movid
          HAVING COUNT(*) IN (SELECT MAX(max)
                              FROM (
                                       SELECT COUNT(*) AS max
                                       FROM review
                                       GROUP BY movid
                                   ) x)
         ) y
)
ORDER BY releasedate, title
;



## Query No 14

SELECT movies.title, movies.releasedate, AVG(review.rating) AS "avgrating"
FROM movies
         LEFT OUTER JOIN review
                         ON movies.movid = review.movid
GROUP BY movies.title, movies.releasedate
HAVING COUNT(*) >= 2
ORDER BY AVG(review.rating) DESC, movies.releasedate, movies.title;


## Query No 15

SELECT movies.title, COUNT(review.movid) AS "numreviews"
FROM movies
         LEFT OUTER JOIN review
                         ON movies.movid = review.movid
WHERE (movies.releasedate) =
      (SELECT MAX(max)
       FROM (
                SELECT releasedate AS max
                FROM movies
                GROUP BY movid
            ) X)
GROUP BY movies.title, movies.releasedate
ORDER BY movies.title;

## Query No 16

SELECT movies.title, movies.releasedate, AVG(review.rating) AS "avgrating"
FROM movies
         LEFT OUTER JOIN review
                         ON movies.movid = review.movid
WHERE movies.movid IN (SELECT moviegenres.movid
                FROM moviegenres
                WHERE moviegenres.genre = 'Comedy'

                INTERSECT

                SELECT review.movid
                FROM review
                WHERE review.userid NOT IN (SELECT users.userid
                                     FROM users
                                     WHERE email = 'cinebuff@movieinfo.com'))
group by movies.title, movies.releasedate
HAVING AVG(review.rating) >= (SELECT AVG(rating)
                              FROM review
                              WHERE movid IN (SELECT movid
                                              FROM moviegenres
                                              WHERE genre = 'Comedy'

                                              INTERSECT

                                              SELECT movid
                                              FROM review
                                              WHERE userid IN (SELECT userid
                                                                   FROM users
                                                                   WHERE email = 'cinebuff@movieinfo.com')))
ORDER BY AVG(review.rating) DESC, movies.releasedate, movies.title;
;


## Query No 17
SELECT users.email
FROM review r1
         INNER JOIN users ON r1.userid=users.userid
WHERE r1.movid IN
      (SELECT movies.movid FROM movies
                                    INNER JOIN review r2 ON r2.movid=movies.movid
                                    INNER JOIN users ON users.userid=r2.userid
       WHERE users.email='cinebuff@movieinfo.com')
  AND r1.rating-r1.rating<=1
ORDER BY users.email;


## Query 18

SELECT moviegenres.genre, AVG(review.rating) AS "avgrating"
FROM review
         INNER JOIN moviegenres ON review.movid = moviegenres.movid
         INNER JOIN users ON users.userid = review.userid
WHERE users.email = 'cinebuff@movieinfo.com'
GROUP BY moviegenres.genre
ORDER BY moviegenres.genre;


## Query No 19

SELECT movies.title, movies.releasedate
FROM movies
         INNER JOIN review ON movies.movid = review.movid
WHERE YEAR(movies.releasedate) < 2019
GROUP BY movies.title
HAVING AVG(review.rating) >= 7
    OR AVG(review.rating) <= 5
ORDER BY movies.releasedate, movies.title;


## Query No 20


SELECT distinctrow releaselanguages.language, moviegenres.genre
FROM releaselanguages
         INNER JOIN moviegenres ON releaselanguages.movid = moviegenres.movid
         INNER JOIN movies ON movies.movid = moviegenres.movid
GROUP BY moviegenres.genre;


