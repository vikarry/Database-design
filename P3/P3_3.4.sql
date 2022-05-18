SELECT notedate, notetime, LEFT(content,50) AS content
FROM note
WHERE note.appid IN (SELECT appid
    FROM appointment a
    WHERE a.pid IN (SELECT pid
    FROM appointment
    WHERE appdate = '2022-02-18'
  AND apptime = '15:30:00')
  AND a.pregid IN (SELECT pregid
    FROM appointment
    WHERE appdate = '2022-02-18'
  AND apptime = '15:30:00')
    )
ORDER BY notedate, notetime DESC
;

SELECT *
FROM midwife
WHERE practitionerid = 123456;
