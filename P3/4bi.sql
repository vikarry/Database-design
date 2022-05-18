SELECT p.pid, p.mhealthid, m.mname, m.mphone, preg.pregid, preg.expduedate
FROM mother m LEFT OUTER JOIN  (parents p LEFT OUTER JOIN pregnancy preg on p.pid = preg.pid) on m.mhealthid = p.mhealthid
WHERE p.mhealthid = 919289;

SELECT p.pid, p.mhealthid, p.fhealthid, m.mname, a.pregid, a.appdate, n.noteid, n.notedate, n.notetime, LEFT(n.content,50) AS content
FROM note n LEFT OUTER JOIN (appointment a LEFT OUTER JOIN  (parents p LEFT OUTER JOIN mother m on p.mhealthid = m.mhealthid) ON a.pid = p.pid) ON n.appid = a.appid
WHERE m.mhealthid = 919289
ORDER BY a.appdate;


SELECT p.pid, p.mhealthid, p.fhealthid, m.mname, a.pregid, a.appdate,t.testid, t.prescribedate, t.type, t.conductdate, t.result
FROM test t LEFT OUTER JOIN (appointment a LEFT OUTER JOIN  (parents p LEFT OUTER JOIN mother m on p.mhealthid = m.mhealthid) ON a.pid = p.pid) ON t.appid = a.appid
WHERE t.patientid = 919289
ORDER by a.appdate;

-- M2
SELECT p.pid, p.mhealthid, p.fhealthid, m.mname, a.pregid, a.appdate, t.testid, t.prescribedate, t.type, t.conductdate, LEFT(t.result,50) AS result
FROM test t LEFT OUTER JOIN (appointment a LEFT OUTER JOIN  (parents p LEFT OUTER JOIN mother m on p.mhealthid = m.mhealthid) ON a.pid = p.pid) ON t.appid = a.appid
WHERE t.patientid = 938765
ORDER by a.appdate;