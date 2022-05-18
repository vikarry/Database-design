SELECT t.conductdate, t.result
FROM test t JOIN appointment a ON t.appid = a.appid
WHERE t.patientid = (SELECT m.mhealthid
                     FROM mother m
                     WHERE m.mname = 'Victoria Gutierrez')
  AND a.pregid = 2
  AND t.type = 'blood iron test'
;