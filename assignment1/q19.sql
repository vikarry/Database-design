SELECT title, releasedate
FROM movies
WHERE movid IN (
    SELECT movid
    FROM (SELECT movid, AVG(rating)
          FROM (SELECT r.movid, r.rating
                FROM review r
                WHERE reviewdate < '2019-01-01') AS x
          GROUP BY movid
          HAVING AVG(rating) >= 7) AS y


    INTERSECT

    (SELECT movid
     FROM (SELECT movid, AVG(rating)
           FROM (SELECT r.movid, r.rating
                 FROM review r
                 WHERE reviewdate >= '2019-01-01') AS a
           GROUP BY movid
           HAVING AVG(rating)  <= 5) AS b

     UNION
     (SELECT movid
      FROM movies
      EXCEPT
      SELECT movid
      FROM review
      WHERE reviewdate > '2019-01-01'))
)
ORDER BY releasedate, title
;