SELECT maddress
FROM Mother
WHERE mphone = '505-624-6162'
;

CREATE UNIQUE INDEX ind1 ON mother (mphone)
INCLUDE (mname)
;

SELECT *
FROM Mother
WHERE mphone = '505-624-6162'
;

DROP INDEX ind1;