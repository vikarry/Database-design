SELECT DISTINCT a.appdate, a.apptime, m.mhealthid, m.mname, m.mphone
FROM (appointment a
         JOIN (parents p JOIN mother m ON p.mhealthid = m.mhealthid) ON a.pid = p.pid)
WHERE practitionerid = (SELECT practionerid
                        FROM midwife
                        WHERE midname = 'Marion Girard')
  AND a.appdate BETWEEN '2022-03-21' AND '2022-03-25'
ORDER BY a.appdate
;

(SELECT DISTINCT a.apptime, 'P' AS info, m.mname, m.mphone
 FROM (appointment a
          LEFT OUTER JOIN (pregnancy preg LEFT OUTER JOIN (parents p LEFT OUTER JOIN mother m ON p.mhealthid = m.mhealthid) ON p.pid = preg.pid)
                          ON a.pid = preg.pid
                              AND a.pregid = preg.pregid)
 WHERE a.appdate = '2022-02-18'
   AND a.practitionerid = preg.primidwife


 UNION

 SELECT DISTINCT a.apptime, 'B' AS info, m.mname, m.mphone
 FROM (appointment a
          LEFT OUTER JOIN (pregnancy preg LEFT OUTER JOIN (parents p LEFT OUTER JOIN mother m ON p.mhealthid = m.mhealthid) ON p.pid = preg.pid)
                          ON a.pid = preg.pid
                              AND a.pregid = preg.pregid)
 WHERE a.appdate = '2022-02-18'
   AND a.practitionerid = preg.backmidwife)
    ORDER BY apptime
;

(SELECT DISTINCT a.apptime, 'P' AS info, m.mname, m.mphone
 FROM (appointment a
          LEFT OUTER JOIN (pregnancy preg LEFT OUTER JOIN (parents p LEFT OUTER JOIN mother m ON p.mhealthid = m.mhealthid) ON p.pid = preg.pid)
                          ON a.pid = preg.pid
                              AND a.pregid = preg.pregid)
 WHERE a.appdate = ''
   AND a.practitionerid = preg.primidwife
 UNION
 SELECT DISTINCT a.apptime, 'B' AS info, m.mname, m.mphone
 FROM (appointment a
          LEFT OUTER JOIN (pregnancy preg LEFT OUTER JOIN (parents p LEFT OUTER JOIN mother m ON p.mhealthid = m.mhealthid) ON p.pid = preg.pid)
                          ON a.pid = preg.pid
                              AND a.pregid = preg.pregid)
 WHERE a.appdate = ''
   AND a.practitionerid = preg.backmidwife)
    ORDER BY apptime;