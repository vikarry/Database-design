SELECT appid
FROM appointment
WHERE appdate ='' AND addtime = ''
;

SELECT mhealthid
FROM parent
WHERE pid =''
;

SELECT p.mhealthid, a.appid
FROM parents p LEFT OUTER JOIN appointment a ON p.pid = a.pid
WHERE a.appdate = '2022-02-18' AND a.apptime = '09:30:00'
;