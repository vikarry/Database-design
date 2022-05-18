CREATE VIEW midwifeinfo (practionerid, name, phone, email, facility, address) AS
SELECT m.practionerid, m.midname, m.midphone, m.midemail, i.name, i.address
FROM midwife m,
     institution i
WHERE m.institid = i.institid
;
DROP VIEW midwifeinfo;
SELECT *
FROM midwifeinfo
LIMIT 5;

SELECT *
FROM midwifeinfo
WHERE facility = 'Lac-Saint-Louis'
LIMIT 5;

INSERT INTO midwifeinfo
VALUES (1,'a', '514', '@gmail', 'Lac-Saint-Louis', '2903 rue Garneau');