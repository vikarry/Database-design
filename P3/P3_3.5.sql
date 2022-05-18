SELECT prescribedate, type, COALESCE(result, 'Pending') AS result
FROM test
WHERE test.appid IN (SELECT appid
    FROM appointment a
    WHERE a.pid IN (SELECT pid
    FROM appointment
    WHERE appdate = '2022-02-18'
  AND apptime = '15:30:00')
  AND a.pregid IN (SELECT pregid
    FROM appointment
    WHERE appdate = '2022-02-18'
  AND apptime = '15:30:00')
    ) AND patientid IN (SELECT mhealthid
        FROM parents
        WHERE pid IN (SELECT pid
            FROM appointment
                      WHERE appdate = '2022-02-18'
                        AND apptime = '15:30:00' ))
ORDER BY prescribedate DESC
;
