SELECT name, COUNT(*)
FROM institution
WHERE institid IN (SELECT m.institid
                   FROM midwife m
                   WHERE m.practionerid IN (SELECT primidwife, COUNT(*)
                                            FROM pregnancy
                                            WHERE finalduedate BETWEEN '2022-07-01' AND '2022-07-31'
                                               OR (finalduedate = NULL AND expduedate BETWEEN '2022-07-01' AND '2022-07-31')
                                            GROUP BY primidwife;
                   )
);

WITH primaryinfo (pid, pregid, primidwife, COUNT(*)) AS (
    SELECT pid, pregid, primidwife, COUNT(*)
    FROM pregnancy
    WHERE finalduedate BETWEEN '2022-07-01' AND '2022-07-31'
       OR (finalduedate = NULL AND expduedate BETWEEN '2022-07-01' AND '2022-07-31')
    GROUP BY primidwife
);
SELECT institid
    FROM midwife;

SELECT i.name, COUNT(*) AS "Pregancies"
FROM institution i JOIN (midwife m JOIN pregnancy p ON m.practionerid = p.primidwife) ON i.institid = m.institid
WHERE finalduedate BETWEEN '2022-07-01' AND '2022-07-31'
   OR (finalduedate = NULL AND expduedate BETWEEN '2022-07-01' AND '2022-07-31')
GROUP BY i.institid, i.name;

SELECT *
FROM institution i JOIN (midwife m JOIN pregnancy p ON m.practionerid = p.primidwife) ON i.institid = m.institid;