SELECT title, releasedate, rating
FROM review JOIN movies
On review.movid = movies.movid
WHERE userid IN (
    SELECT userid
    FROM users
    WHERE email = 'talkiesdude@movieinfo.com')
ORDER BY rating DESC, releasedate, title