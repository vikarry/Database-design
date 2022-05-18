
SELECT title, releasedate, string_agg(language, ', ') AS languages
FROM movies
         JOIN releaselanguages
              ON movies.movid = releaselanguages.movid
WHERE  (language = 'French' OR language = 'Italian')
GROUP BY title, releasedate
ORDER BY releasedate, title
;
