CREATE TABLE patient
(
    patientid INTEGER NOT NULL,
    PRIMARY KEY (patientid)
);

CREATE TABLE mother
(
    mhealthid     INTEGER     NOT NULL,
    mname         VARCHAR(30) NOT NULL,
    memail        VARCHAR(50) NOT NULL UNIQUE,
    maddress      VARCHAR(50) NOT NULL,
    mprofession   VARCHAR(50) NOT NULL,
    mphone        VARCHAR(30) NOT NULL,
    mbday         DATE        NOT NULL,
    menstrualdate DATE        NOT NULL,
    mblood        VARCHAR(30),
    PRIMARY KEY (mhealthid),
    FOREIGN KEY (mhealthid) REFERENCES patient
);

CREATE TABLE father
(
    fhealthid   INTEGER     NOT NULL,
    fname       VARCHAR(30) NOT NULL,
    femail      VARCHAR(50),
    faddress    VARCHAR(50),
    fprofession VARCHAR(30) NOT NULL,
    fphone      VARCHAR(30) NOT NULL,
    fbday       DATE        NOT NULL,
    fblood      VARCHAR(30),
    PRIMARY KEY (fhealthid)
);

CREATE TABLE parents
(
    pid          INTEGER NOT NULL,
    mhealthid    INTEGER NOT NULL,
    fhealthid    INTEGER,
    isInterested VARCHAR(10),
    PRIMARY KEY (pid),
    FOREIGN KEY (mhealthid) REFERENCES mother,
    FOREIGN KEY (fhealthid) REFERENCES father
);


CREATE TABLE institution
(
    institid INTEGER     NOT NULL,
    name     VARCHAR(50) NOT NULL,
    email    VARCHAR(50),
    address  VARCHAR(50) NOT NULL,
    phone    VARCHAR(30) NOT NULL,
    website  VARCHAR(50),
    PRIMARY KEY (institid)
);


CREATE TABLE clinic
(
    institid INTEGER NOT NULL,
    PRIMARY KEY (institid),
    FOREIGN KEY (institid) REFERENCES institution
);


CREATE TABLE birthcenter
(
    institid INTEGER NOT NULL,
    PRIMARY KEY (institid),
    FOREIGN KEY (institid) REFERENCES institution
);


CREATE TABLE midwife
(
    practitionerid INTEGER     NOT NULL,
    institid     INTEGER     NOT NULL,
    midname      VARCHAR(30) NOT NULL,
    midemail     VARCHAR(50) NOT NULL UNIQUE,
    midphone     VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY (practitionerid),
    FOREIGN KEY (institid) REFERENCES institution
);

CREATE TABLE infosession
(
    sessionid    INTEGER NOT NULL,
    practionerid INTEGER NOT NULL,
    language     VARCHAR(30),
    sdate        DATE,
    stime        TIME,
    registration INTEGER NOT NULL,
    attendance   INTEGER,
    PRIMARY KEY (sessionid),
    FOREIGN KEY (practionerid) REFERENCES midwife,
    FOREIGN KEY (registration) REFERENCES parents,
    FOREIGN KEY (attendance) REFERENCES parents
);


CREATE TABLE pregnancy
(
    pid          INTEGER NOT NULL,
    pregid       INTEGER NOT NULL,
    primidwife   INTEGER,
    backmidwife  INTEGER,
    expduedate   DATE,
    ultradudate  DATE,
    finalduedate DATE,
    location     INTEGER,
    babynum      INTEGER,
    PRIMARY KEY (pid, pregid),
    FOREIGN KEY (pid) REFERENCES parents,
    FOREIGN KEY (location) REFERENCES institution,
    FOREIGN KEY (primidwife) REFERENCES midwife,
    FOREIGN KEY (backmidwife) REFERENCES midwife

);


CREATE TABLE baby
(
    babyid    INTEGER NOT NULL,
    gender    VARCHAR(30),
    birthday  DATE,
    birthtime TIME,
    name      VARCHAR(30),
    blood     VARCHAR(10),
    pid       INTEGER NOT NULL,
    pregid    INTEGER NOT NULL,
    PRIMARY KEY (pid, pregid, babyid),
    FOREIGN KEY (pid, pregid) REFERENCES pregnancy,
    FOREIGN KEY (babyid) REFERENCES patient
);


CREATE TABLE appointment
(
    appid          INTEGER NOT NULL,
    pid            INTEGER NOT NULL,
    pregid         INTEGER NOT NULL,
    practitionerid INTEGER,
    appdate        DATE,
    apptime        TIME,
    PRIMARY KEY (appid),
    FOREIGN KEY (pid, pregid) REFERENCES pregnancy,
    FOREIGN KEY (practitionerid) REFERENCES midwife
);



CREATE TABLE note
(
    noteid   INTEGER NOT NULL,
    appid    INTEGER NOT NULL,
    notedate DATE,
    notetime TIME,
    content  VARCHAR(50),
    PRIMARY KEY (noteid),
    FOREIGN KEY (appid) REFERENCES appointment
);


CREATE TABLE technician
(
    techid    INTEGER     NOT NULL,
    techname  VARCHAR(30) NOT NULL,
    techphone VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY (techid)

);


CREATE TABLE test
(
    testid        INTEGER NOT NULL,
    appid         INTEGER NOT NULL,
    patientid     INTEGER NOT NULL,
    type          VARCHAR(50),
    result        VARCHAR(50),
    prescribedate DATE,
    sampledate    DATE,
    conductdate   DATE,
    techid        INTEGER,
    PRIMARY KEY (testid),
    FOREIGN KEY (appid) REFERENCES appointment,
    FOREIGN KEY (techid) REFERENCES technician,
    FOREIGN KEY (patientid) REFERENCES patient
    --CONSTRAINT valid CHECK ( conductdate >= prescribedate )
);


SELECT *
From test
;

CREATE INDEX phone_number
    ON mother (mphone)；

SELECT maddress
From mother
WHERE mphone = '505-624-6162'
;
