INSERT INTO patient
VALUES (998154);
INSERT INTO patient
VALUES (938765);
INSERT INTO patient
VALUES (943090);
INSERT INTO patient
VALUES (919289);
INSERT INTO patient
VALUES (934891);
INSERT INTO patient
VALUES (989710);
INSERT INTO patient
VALUES (919736);
INSERT INTO patient
VALUES (915931);
INSERT INTO patient
VALUES (998153);

INSERT INTO patient
VALUES (201);
INSERT INTO patient
VALUES (202);
INSERT INTO patient
VALUES (203);
INSERT INTO patient
VALUES (204);
INSERT INTO patient
VALUES (205);
INSERT INTO patient
VALUES (206);
INSERT INTO patient
VALUES (207);
INSERT INTO patient
VALUES (208);
INSERT INTO patient
VALUES (209);
INSERT INTO patient
VALUES (210);
INSERT INTO patient
VALUES (211);
INSERT INTO patient
VALUES (212);
INSERT INTO patient
VALUES (213);
INSERT INTO patient
VALUES (214);
INSERT INTO patient
VALUES (215);
INSERT INTO patient
VALUES (216);
INSERT INTO patient
VALUES (217);
INSERT INTO patient
VALUES (218);
INSERT INTO patient
VALUES (219);
INSERT INTO patient
VALUES (220);
INSERT INTO patient
VALUES (221);
INSERT INTO patient
VALUES (222);
INSERT INTO patient
VALUES (223);
INSERT INTO patient
VALUES (224);
INSERT INTO patient
VALUES (225);
INSERT INTO patient
VALUES (226);
INSERT INTO patient
VALUES (227);
INSERT INTO patient
VALUES (228);
INSERT INTO patient
VALUES (229);
INSERT INTO patient
VALUES (230);
INSERT INTO patient
VALUES (231);
INSERT INTO patient
VALUES (232);
INSERT INTO patient
VALUES (233);
INSERT INTO patient
VALUES (234);
INSERT INTO patient
VALUES (235);


INSERT INTO mother
VALUES (998153, 'Oana Finney', 'oana001@gmail.com', '3555 cote des neiges road', 'Student', '505-624-6162', '1990-01-02',
        '2021-12-15', 'B');

INSERT INTO mother
VALUES (998154, 'Olivia Finney', 'olivia001@gmail.com', '2313 St-Jerome Street', 'Teacher', '505-624-6162', '1990-01-02',
        '2021-12-15', 'B');
INSERT INTO mother
VALUES (938765, 'Emma Villegas', 'emma002@gmail.com', '2343 5th Avenue', 'Flight attendant', '228-886-7772', '1989-08-15',
        '2021-12-04', 'AB');
INSERT INTO mother
VALUES (943090, 'Sophia Brooks', 'Sophi003@gmail.com', '3574 Duke Street', 'Art dealer', '480-955-7804', '1992-10-29',
        '2021-12-10', NULL);
INSERT INTO mother
VALUES (919289, 'Ava Jennings', 'Ava004@gmail.com', '1553 Robson St', 'Computer analyst', '207-684-8918', '1997-03-14',
        '2021-04-27', 'O');
INSERT INTO mother
VALUES (934891, 'Charlotte Myers', 'charlotte005@gmail.com', '1595 Papineau Avenue', 'Bus driver', '223-998-2155',
        '1996-12-09',
        '2021-07-24', 'A');
INSERT INTO mother
VALUES (989710, 'Zoe Odling', 'zoe006@gmail.com', '272 Bayfield St', 'Occupational therapist', '582-262-1257',
        '1995-08-15',
        '2022-01-05', NULL);
INSERT INTO mother
VALUES (919736, 'Luna Sweet', 'luna007@gmail.com', '1769 Heritage Drive', 'Estate agent', '213-710-2520', '1984-06-20',
        '2021-11-05', 'O');
INSERT INTO mother
VALUES (915931, 'Victoria Gutierrez', 'victoria008@gmail.com', '1520 University Drive', 'Data scientist', '514-107-9520', '1994-06-03',
        '2021-11-05', 'A');

INSERT INTO father
VALUES (804470, 'Liam Finney', 'liam101@gmail.com', NULL, 'Illustrator', '610-632-7239', '1980-10-07', NULL);
INSERT INTO father
VALUES (829399, 'Noah Villegas', 'noah102@gmail.com', '2343 5th Avenue', 'Lighthouse keeper', '582-302-9189', '1979-06-08',
        'AB');
INSERT INTO father
VALUES (814578, 'Oliver Brooks', 'oliver103@gmail.com', '3574 Duke Street', 'Printer', '308-537-7861', '1997-12-23', NULL);
INSERT INTO father
VALUES (805011, 'William Jennings', 'william104@gmail.com', '1553 Robson St', 'Marketing director', '323-540-7371',
        '1995-06-08', NULL);
INSERT INTO father
VALUES (871025, 'James Myers', 'james105@gmail.com', '3225 Essendene Avenue', 'Judge', '931-241-6117', '1986-05-01', NULL);
INSERT INTO father
VALUES (804049, 'Justin Odling', 'justin10601@gmail.com', '4540 40th Street', 'Film director', '424-293-6892',
        '1992-03-15', NULL);


INSERT INTO parents
VALUES (260001, 998154, 804470, 'YES');
INSERT INTO parents
VALUES (260002, 938765, 829399, 'YES');
INSERT INTO parents
VALUES (260003, 943090, 814578, 'YES');
INSERT INTO parents
VALUES (260004, 919289, 805011, 'YES');
INSERT INTO parents
VALUES (260005, 934891, 871025, 'YES');
INSERT INTO parents
VALUES (260006, 989710, 804049, 'NO');
INSERT INTO parents
VALUES (260007, 919736, NULL, 'YES');
INSERT INTO parents
VALUES (260008, 915931, NULL, 'YES');
INSERT INTO parents
VALUES (260009, 915931, 804049, 'YES');

INSERT INTO institution
VALUES (514001, 'Crea-MeD, Private Medical Clinic', 'crea001@gmail.com', '654 Sherbrooke Ouest', '514-678-1248', NULL);
INSERT INTO institution
VALUES (514002, 'Lacroix Médecine Privée', 'lacorix002@gmail.com', '90 René-Lévesque Blvd', '514-340-2911', NULL);
INSERT INTO institution
VALUES (514003, 'Passport Healthc', 'pass003@gmail.com', '1703 Papineau Avenue', '548-914-0309', NULL);
INSERT INTO institution
VALUES (514004, 'UnionMD', 'unionmd004@gmail.com', '162 rue Garneau', '514-956-8098', 'unionmdmtl.ca');
INSERT INTO institution
VALUES (514005, 'AXiO Sport Medicine Clinic', 'axio005@gmail.com', ' 2500 rue Fournier', '514-330-7751', NULL);



INSERT INTO institution
VALUES (514006, 'Montréal General Hospital', 'mch006@gmail.com', '794 rue Principale', '514-934-1934', 'mch.ca');
INSERT INTO institution
VALUES (514007, 'Hopital General Verdun', 'hgv001@gmail.com', '3762 St-Jacques Est', '514-891-1248', NULL);
INSERT INTO institution
VALUES (514008, 'St. Mary''s Hospital', NULL, '576 rue de la Gauchetière', '514-345-35118', NULL);
INSERT INTO institution
VALUES (514009, 'Lac-Saint-Louis', 'lsl009@gmail.com', '2903 rue Garneau', '514-934-1934', 'lslcenter.ca');
INSERT INTO institution
VALUES (514010, 'Hôpital Notre-Dame', NULL, '1976 René-Lévesque Blvd', '514-413-8777', NULL);


INSERT INTO clinic
VALUES (514001);
INSERT INTO clinic
VALUES (514002);
INSERT INTO clinic
VALUES (514003);
INSERT INTO clinic
VALUES (514004);
INSERT INTO clinic
VALUES (514005);
INSERT INTO birthcenter
VALUES (514006);
INSERT INTO birthcenter
VALUES (514007);
INSERT INTO birthcenter
VALUES (514008);
INSERT INTO birthcenter
VALUES (514009);
INSERT INTO birthcenter
VALUES (514010);


INSERT INTO midwife
VALUES (403001, 514001, 'Maysa Fowler', 'fowler001@hotmail.com', '514-913-4722');
INSERT INTO midwife
VALUES (403002, 514006, 'Ebony Mora', 'mora002@gmail.com', '514-528-7032');
INSERT INTO midwife
VALUES (403003, 514009, 'Marion Girard', 'girard003@hotmail.com', '514-990-6807');
INSERT INTO midwife
VALUES (403004, 514002, 'Kirsten Cresswell', 'cresswell004@gmail.com', '514-583-5631');
INSERT INTO midwife
VALUES (403005, 514009, 'Alicia Gordon', 'gordon005@hotmail.com', '514-874-0749');
INSERT INTO midwife
VALUES (403006, 514010, 'Che Guthrie', 'guthrie006@hotmail.com', '514-213-8562');

INSERT INTO midwife
VALUES (403007, 514007, 'Minnie Peel', 'peel007@hotmail.com', '514-982-3298');
INSERT INTO midwife
VALUES (403008, 514003, 'Scott Mcneill', 'mcneill008@hotmail.com', '514-239-1983');



INSERT INTO infosession
VALUES (587001, 403001, 'English', '2021-02-07', '13:05:00', 260001, 260001);
INSERT INTO infosession
VALUES (587002, 403001, 'English', '2017-08-07', '03:30:00', 260002, 260002);
INSERT INTO infosession
VALUES (587003, 403002, 'French', '2022-01-15', '11:30:00', 260003, 260003);
INSERT INTO infosession
VALUES (587004, 403005, 'English', '2016-12-28', '10:30:00', 260004, 260004);
INSERT INTO infosession
VALUES (587005, 403006, 'English', '2022-02-07', '13:15:00', 260005, 260005);

INSERT INTO infosession
VALUES (587007, 403002, 'French', '2021-3-02', '09:45:00', 260007, 260007);

INSERT INTO infosession
VALUES (587008, 403004, 'French', '2018-12-11', '14:45:00', 260008, 260008);

-- Baby already born at a birth center
INSERT INTO pregnancy
VALUES (260001, 1, 403005, 403001, '2021-11-05', '2021-10-26', '2021-10-26', 514006, 1);
-- Record both pregnancies; add to appointment & attend another info session?
INSERT INTO pregnancy
VALUES (260002, 1, 403003, 403002, '2018-06-03', '2018-05-20', '2018-05-20', 514008, 1);
INSERT INTO pregnancy
VALUES (260002, 2, 403001, NULL, '2022-11-04', NULL, NULL, NULL, NULL);

INSERT INTO pregnancy
VALUES (260003, 1, 403003, NULL, '2022-11-10', NULL, NULL, NULL, NULL);

INSERT INTO pregnancy
VALUES (260004, 1, 403004, 403007, '2017-08-31', '2017-08-20', '2017-08-20', 514001, 2);
INSERT INTO pregnancy
VALUES (260004, 2, 403005, 403001, '2022-05-17', '2022-05-02', '2022-05-02', 514006, 3);
-- 006 parent is not interested
INSERT INTO pregnancy
VALUES (260005, 1, 403003, 403006, '2022-07-31', '2022-07-14', '2022-07-14', 514009, 1);
--victoria 915931
INSERT INTO pregnancy
VALUES (260008, 2, 403002, 403008, '2019-06-28', '2019-06-28', '2019-06-28', 514009, 1);
INSERT INTO pregnancy
VALUES (260009, 3, 403003, NULL, '2022-07-20', '2022-07-20', '2022-07-20', NULL, 2);


--luna sweet
INSERT INTO pregnancy
VALUES (260007, 2, 403006, NULL, '2022-11-21', NULL, NULL, NULL, NULL);
INSERT INTO pregnancy
VALUES (260007, 1, 403001, 403008, '2021-11-02', '2021-11-02', '2021-11-02', NULL, 1);


INSERT INTO appointment
VALUES (588080, 260007, 1, 403008, '2021-03-14', '12:45:00');

INSERT INTO appointment
VALUES (588081, 260007, 1, 403001, '2021-10-14', '12:45:00');
INSERT INTO note
VALUES (603065, 588081, '2021-10-14', '13:08:17', 'xxxxxxx');

INSERT INTO appointment
VALUES (588035, 260008, 2, 403002, '2018-12-27', '13:15:00');
INSERT INTO note
VALUES (603005, 588035, '2018-12-27', '13:25:29', 'xxxxxxx');
INSERT INTO note
VALUES (603006, 588035, '2018-12-27', '13:38:24', 'xxxxxxx');

INSERT INTO appointment
VALUES (588036, 260008, 2, 403002, '2019-02-27', '13:15:00');
INSERT INTO note
VALUES (603007, 588036, '2019-02-27', '13:23:02', 'xxxxxxx');

INSERT INTO appointment
VALUES (588037, 260008, 2, 403002, '2019-04-27', '13:15:00');
INSERT INTO appointment
VALUES (588038, 260008, 2, 403002, '2019-06-07', '13:15:00');
INSERT INTO appointment
VALUES (588039, 260008, 2, 403002, '2019-06-21', '13:15:00');
INSERT INTO note
VALUES (603010, 588039, '2019-06-21', '13:29:53', 'xxxxxxx');

INSERT INTO appointment
VALUES (588040, 260009, 3, 403003, '2022-01-22', '16:30:00');
INSERT INTO note
VALUES (603020, 588040, '2022-01-22', '16:45:12', 'xxxxxxx');

INSERT INTO appointment
VALUES (588041, 260009, 3, 403003, '2022-03-22', '16:30:00');


INSERT INTO appointment
VALUES (588005, 260001, 1, 403005, '2021-03-14', '08:45:00');
INSERT INTO note
VALUES (603001, 588005, '2021-03-14', '08:55:29', 'xxxxxxx');
INSERT INTO note
VALUES (603002, 588005, '2021-03-14', '09:03:46', 'xxxxxxx');

INSERT INTO appointment
VALUES (588006, 260001, 1, 403005, '2021-04-14', '08:45:00');
INSERT INTO note
VALUES (603003, 588006, '2021-04-14', '08:56:33', 'xxxxxxx');


INSERT INTO appointment
VALUES (588007, 260001, 1, 403005, '2021-05-14', '08:45:00');
INSERT INTO note
VALUES (603004, 588007, '2021-05-14', '08:59:21', 'xxxxxxx');

INSERT INTO appointment
VALUES (588010, 260001, 1, 403005, '2021-08-14', '08:45:00');
INSERT INTO note
VALUES (603008, 588010, '2021-08-14', '09:04:52', 'xxxxxxx');

INSERT INTO appointment
VALUES (588011, 260001, 1, 403005, '2021-08-28', '08:45:00');
INSERT INTO note
VALUES (603009, 588011, '2021-08-14', '08:52:45', 'xxxxxxx');

INSERT INTO appointment
VALUES (588012, 260001, 1, 403005, '2021-09-14', '08:45:00');
INSERT INTO note
VALUES (603011, 588012, '2021-09-14', '09:08:34', 'xxxxxxx');

INSERT INTO appointment
VALUES (588013, 260001, 1, 403005, '2021-09-28', '08:45:00');
INSERT INTO note
VALUES (603012, 588013, '2021-09-28', '09:00:13', 'xxxxxxx');


INSERT INTO appointment
VALUES (588014, 260001, 1, 403005, '2021-10-05', '08:45:00');
INSERT INTO note
VALUES (603014, 588014, '2021-10-05', '09:13:05', 'xxxxxxx');

INSERT INTO appointment
VALUES (588015, 260002, 1, 403003, '2017-08-21', '08:05:00');
INSERT INTO note
VALUES (603015, 588015, '2017-08-21', '08:17:55', 'xxxxxxx');
INSERT INTO note
VALUES (603016, 588015, '2017-08-21', '08:25:43', 'xxxxxxx');
INSERT INTO note
VALUES (603017, 588015, '2017-08-21', '08:29:16', 'xxxxxxx');

INSERT INTO appointment
VALUES (588016, 260002, 1, 403003, '2017-09-21', '08:05:00');
INSERT INTO note
VALUES (603018, 588016, '2017-09-21', '08:22:35', 'xxxxxxx');

INSERT INTO appointment
VALUES (588017, 260002, 1, 403003, '2017-10-21', '08:05:00');
INSERT INTO note
VALUES (603019, 588017, '2017-10-21', '08:18:53', 'xxxxxxx');

INSERT INTO appointment
VALUES (588018, 260002, 1, 403003, '2017-11-21', '08:05:00');


INSERT INTO appointment
VALUES (588019, 260002, 1, 403003, '2017-12-21', '08:05:00');


INSERT INTO appointment
VALUES (588020, 260002, 1, 403003, '2018-01-21', '08:05:00');
INSERT INTO note
VALUES (603023, 588020, '2018-01-21', '08:15:39', 'xxxxxxx');

INSERT INTO appointment
VALUES (588021, 260002, 1, 403003, '2018-02-21', '08:05:00');
INSERT INTO note
VALUES (603024, 588021, '2018-02-21', '08:21:32', 'xxxxxxx');

INSERT INTO appointment
VALUES (588022, 260002, 1, 403003, '2018-03-21', '08:05:00');
INSERT INTO note
VALUES (603025, 588022, '2018-03-21', '08:22:41', 'xxxxxxx');

INSERT INTO appointment
VALUES (588023, 260002, 1, 403003, '2018-04-21', '08:05:00');
INSERT INTO note
VALUES (603026, 588023, '2018-04-21', '08:15:39', 'xxxxxxx');
INSERT INTO note
VALUES (603027, 588023, '2018-04-21', '08:24:11', 'xxxxxxx');

INSERT INTO appointment
VALUES (588024, 260002, 1, 403003, '2018-04-28', '08:05:00');
INSERT INTO note
VALUES (603028, 588024, '2018-04-28', '08:18:07', 'xxxxxxx');

INSERT INTO appointment
VALUES (588025, 260002, 1, 403003, '2018-05-12', '08:05:00');
INSERT INTO note
VALUES (603029, 588025, '2018-05-12', '08:23:28', 'xxxxxxx');


INSERT INTO appointment
VALUES (588026, 260002, 2, 403001, '2022-02-28', '11:05:00');

INSERT INTO appointment
VALUES (588027, 260003, 1, 403003, '2022-02-23', '13:25:00');
INSERT INTO note
VALUES (603030, 588027, '2022-02-23', '13:43:36', 'xxxxxxx');

INSERT INTO appointment
VALUES (588050, 260003, 1, 403003, '2022-03-23', '13:25:00');

INSERT INTO appointment
VALUES (588028, 260004, 1, 403004, '2017-01-05', '10:15:00');
INSERT INTO note
VALUES (603031, 588028, '2017-01-05', '10:28:00', 'xxxxxxx');
INSERT INTO note
VALUES (603032, 588028, '2017-01-05', '10:35:08', 'xxxxxxx');



INSERT INTO appointment
VALUES (588031, 260004, 1, 403004, '2017-04-05', '10:15:00');
INSERT INTO note
VALUES (603035, 588031, '2017-04-05', '10:30:06', 'xxxxxxx');



INSERT INTO appointment
VALUES (588034, 260004, 1, 403004, '2017-06-19', '10:15:00');
INSERT INTO note
VALUES (603039, 588034, '2017-06-19', '10:33:47', 'xxxxxxx');

INSERT INTO appointment
VALUES (588058, 260004, 1, 403004, '2017-07-05', '15:30:00');
INSERT INTO note
VALUES (603040, 588058, '2017-07-05', '15:38:44', 'xxxxxxx');


INSERT INTO appointment
VALUES (588059, 260004, 1, 403004, '2017-07-19', '15:30:00');
INSERT INTO note
VALUES (603042, 588059, '2017-07-19', '15:47:31', 'xxxxxxx');


INSERT INTO appointment
VALUES (588051, 260004, 2, 403005, '2021-10-08', '09:30:00');
INSERT INTO note
VALUES (603043, 588051, '2021-10-08', '09:36:13', 'xxxxxxx');
INSERT INTO note
VALUES (603044, 588051, '2021-10-08', '09:52:53', 'xxxxxxx');


INSERT INTO appointment
VALUES (588052, 260004, 2, 403005, '2021-12-08', '14:15:00');

INSERT INTO appointment
VALUES (588053, 260004, 2, 403005, '2022-01-08', '15:30:00');

INSERT INTO appointment
VALUES (588060, 260002, 2, 403001, '2022-02-18', '15:30:00');
INSERT INTO note
VALUES (603071, 588060, '2022-02-18', '15:40:02', 'xxxxxxx');
INSERT INTO note
VALUES (603072, 588060, '2022-02-18', '15:51:27', 'xxxxxxx');

INSERT INTO appointment
VALUES (588054, 260004, 2, 403005, '2022-02-18', '09:30:00');
INSERT INTO note
VALUES (603048, 588054, '2022-02-18', '09:50:02', 'xxxxxxx');

INSERT INTO appointment
VALUES (588055, 260004, 2, 403005, '2022-03-26', '09:30:00');


INSERT INTO appointment
VALUES (588056, 260005, 1, 403003, '2022-02-21', '09:00:00');
INSERT INTO note
VALUES (603049, 588056, '2022-02-21', '09:07:12', 'xxxxxxx');
INSERT INTO note
VALUES (603050, 588056, '2022-02-21', '09:15:54', 'xxxxxxx');

INSERT INTO appointment
VALUES (588057, 260005, 1, 403003, '2022-03-21', '09:00:00');

--588045 & 603050

INSERT INTO baby
VALUES (201, 'Male', '2021-10-13', '13:05:00', 'Joe', 'B', 260001, 1);

INSERT INTO baby
VALUES (202, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);

INSERT INTO baby
VALUES (203, NULL, NULL, NULL, NULL, NULL, 260002, 2);

INSERT INTO baby
VALUES (204, NULL, NULL, NULL, NULL, NULL, 260003, 1);

INSERT INTO baby
VALUES (205, 'Female', '2017-07-26', '15:10:00', 'Jasmine', 'O', 260004, 1);

INSERT INTO baby
VALUES (206, 'Male', '2017-07-26', '15:15:03', 'James', 'O', 260004, 1);

INSERT INTO baby
VALUES (207, 'Male', NULL, NULL, NULL, 'B', 260004, 2);
INSERT INTO baby
VALUES (208, 'Male', NULL, NULL, NULL, 'B', 260004, 2);
INSERT INTO baby
VALUES (209, 'Male', NULL, NULL, NULL, 'B', 260004, 2);

INSERT INTO baby
VALUES (210, NULL, NULL, NULL, NULL, NULL, 260005, 1);

INSERT INTO baby
VALUES (211, 'Male', '2019-06-28', '05:34:43', 'Aaron', 'AB', 260008, 2);
INSERT INTO baby
VALUES (212, 'Female', NULL, NULL, NULL, NULL, 260009, 3);
INSERT INTO baby
VALUES (213, 'Female', NULL, NULL, NULL, NULL, 260009, 3);

INSERT INTO baby
VALUES (214, 'Female', '2021-10-28', '08:33:49', 'Cyrstal', 'O', 260007, 1);

INSERT INTO baby
VALUES (215, 'Male', '2021-10-02', '13:05:00', 'Joe', 'B', 260001, 1);
INSERT INTO baby
VALUES (216, 'Female', '2021-10-07', '08:05:00', 'Joe', 'B', 260001, 1);
INSERT INTO baby
VALUES (217, 'Female', '2021-10-19', '07:25:00', 'Joe', 'B', 260001, 1);
INSERT INTO baby
VALUES (218, 'Male', '2021-10-09', '20:18:00', 'Joe', 'B', 260001, 1);

INSERT INTO baby
VALUES (219, 'Male', '2019-06-28', '05:34:43', 'Aaron', 'AB', 260008, 2);
INSERT INTO baby
VALUES (220, 'Male', '2019-06-16', '05:34:43', 'Aaron', 'AB', 260008, 2);
INSERT INTO baby
VALUES (221, 'Male', '2019-06-02', '05:34:43', 'Aaron', 'AB', 260008, 2);
INSERT INTO baby
VALUES (222, 'Male', '2019-06-04', '05:34:43', 'Aaron', 'AB', 260008, 2);

INSERT INTO baby
VALUES (223, 'Male', '2017-07-26', '15:15:03', 'James', 'O', 260004, 1);
INSERT INTO baby
VALUES (224, 'Male', '2017-07-26', '15:15:03', 'James', 'O', 260004, 1);
INSERT INTO baby
VALUES (225, 'Male', '2017-07-26', '15:15:03', 'James', 'O', 260004, 1);
INSERT INTO baby
VALUES (226, 'Male', '2017-07-26', '15:15:03', 'James', 'O', 260004, 1);
INSERT INTO baby
VALUES (227, 'Male', '2017-07-26', '15:15:03', 'James', 'O', 260004, 1);

INSERT INTO baby
VALUES (228, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (229, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (230, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (231, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (232, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (233, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (234, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);
INSERT INTO baby
VALUES (235, 'Female', '2018-05-18', '11:22:35', 'Angela', 'AB', 260002, 1);


INSERT INTO technician
VALUES (631001, 'Izabella Carrillo', '514-844-5226');
INSERT INTO technician
VALUES (631002, 'Kaleb Lopez', '613-264-6346');
INSERT INTO technician
VALUES (631003, 'Judy Waller', '514-244-7747');
INSERT INTO technician
VALUES (631004, 'Ronald Russo', '514-533-6968');
INSERT INTO technician
VALUES (631005, 'Amari Yang', '514-998-4187');

--INSERT INTO test
--VALUES (630001, 588008, 201, 'blood type test', 'B', '2021-06-14', '2021-06-16', '2021-06-16', 631002);

INSERT INTO test
VALUES (630002, 588017, 202, 'blood type test', 'AB', '2017-10-21', '2017-10-25', '2017-10-25', 631005);
-- twins
INSERT INTO test
VALUES (630003, 588028, 205, 'blood type test', 'O', '2017-01-05', '2017-01-08', '2017-01-08', 631004);

INSERT INTO test
VALUES (630004, 588028, 206, 'blood type test', 'O', '2017-01-05', '2017-01-08', '2017-01-08', 631004);

INSERT INTO test
VALUES (630015, 588053, 207, 'blood type test', 'B', '2022-01-08', '2022-01-11', '2022-01-11', 631001);
INSERT INTO test
VALUES (630016, 588053, 208, 'blood type test', 'B', '2022-01-08', '2022-01-11', '2022-01-11', 631001);
INSERT INTO test
VALUES (630017, 588053, 209, 'blood type test', 'B', '2022-01-08', '2022-01-11', '2022-01-11', 631001);

INSERT INTO test
VALUES (630018, 588056, 210, 'blood type test', NULL, '2022-02-21', NUll, NULL, 631002);
INSERT INTO test
VALUES (630035, 588036, 211, 'blood type test', 'AB', '2019-02-27', '2019-02-27', '2019-03-02', 631003);

INSERT INTO test
VALUES (630019, 588005, 998154, 'blood type test', 'B', '2021-03-14', '2021-03-14', '2021-03-15', 631001);
INSERT INTO test
VALUES (630020, 588015, 938765, 'blood type test', 'AB', '2017-08-21', '2017-08-21', '2017-08-24', 631002);
INSERT INTO test
VALUES (630021, 588028, 919289, 'blood type test', 'O', '2017-01-05', '2017-01-05', '2017-01-07', 631001);
INSERT INTO test
VALUES (630022, 588056, 934891, 'blood type test', 'A', '2022-02-21', '2022-02-21', '2022-02-22', 631005);
INSERT INTO test
VALUES (630036, 588035, 915931, 'blood type test', 'A', '2018-12-27', '2018-12-27', '2018-12-30', 631004);
INSERT INTO test
VALUES (630047, 588080, 919736, 'blood type test', 'O', '2021-03-14', '2021-03-14', '2021-03-14', 631003);


--ultrasound
INSERT INTO test
VALUES (630037, 588035, 915931, 'first trimester ultrasound', '2019-06-28', '2018-12-27', NULL, '2019-01-09', 631003);
INSERT INTO test
VALUES (630038, 588036, 915931, 'ultrasound', 'Male', '2019-02-27', NULL, '2019-03-05', 631005);

INSERT INTO test
VALUES (630039, 588040, 915931, 'first trimester ultrasound', '2022-07-20', '2022-01-22', NULL, '2022-01-23', 631005);
INSERT INTO test
VALUES (630070, 588040, 915931, 'ultrasound', 'Female & Female', '2022-01-22', NULL, '2022-01-23', 631005);

INSERT INTO test
VALUES (630005, 588005, 998154, 'first trimester ultrasound', '2021-10-26', '2021-03-14', NUll, '2021-03-22', 631001);
--INSERT INTO test
--VALUES (630010, 588008, 998154, 'ultrasound', 'Male', '2021-06-14', NUll, '2021-06-19', 631003);

INSERT INTO test
VALUES (630006, 588015, 938765, 'first trimester ultrasound', '2018-05-20', '2017-08-21', NUll, '2017-08-24', 631002);
INSERT INTO test
VALUES (630011, 588017, 938765, 'ultrasound', 'Female', '2017-10-21', NUll, '2017-10-25', 631005);


INSERT INTO test
VALUES (630007, 588028, 919289, 'first trimester ultrasound', '2017-08-20', '2017-01-05', NUll, '2017-01-11', 631001);
INSERT INTO test
VALUES (630012, 588031, 919289, 'ultrasound', 'Female & male', '2017-04-05', NULL, '2017-04-09', 631002);

INSERT INTO test
VALUES (630008, 588051, 919289, 'first trimester ultrasound', '2022-05-02', '2022-10-08', NUll, '2022-10-14', 631004);
INSERT INTO test
VALUES (630013, 588053, 919289, 'ultrasound', 'Male & Male & Male', '2022-01-08', NUll, '2022-01-14', 631004);

INSERT INTO test
VALUES (630009, 588056, 934891, 'first trimester ultrasound', '2022-07-14', '2022-02-21', NUll, '2022-02-21', 631005);
INSERT INTO test
VALUES (630014, 588056, 934891, 'ultrasound', NULL, '2022-02-21', NUll, NULL, 631002);

INSERT INTO test
VALUES (630045, 588060, 938765, 'first trimester ultrasound', NULL, '2022-02-18', NUll, NULL, NULL);

INSERT INTO test
VALUES (630048, 588080, 919736, 'first trimester ultrasound', '2021-10-28', '2021-03-14', NULL, '2021-03-19', 631002);

--blood iron test
INSERT INTO test
VALUES (630040, 588035, 915931, 'blood iron test', 'xxx mg/dL', '2018-12-27', '2018-12-27', '2019-01-02', 631004);
INSERT INTO test
VALUES (630041, 588036, 915931, 'blood iron test', 'xxx mg/dL', '2019-02-27', '2019-02-27', '2019-03-01', 631005);
INSERT INTO test
VALUES (630042, 588038, 915931, 'blood iron test', 'xxx mg/dL', '2019-06-07', '2019-06-07', '2019-06-10', 631002);

INSERT INTO test
VALUES (630043, 588040, 915931, 'blood iron test', 'xxx mg/dL', '2022-01-22', '2022-01-22', '2022-01-24', 631005);

INSERT INTO test
VALUES (630023, 588005, 998154, 'blood iron test', 'xxx mg/dL', '2021-03-14', '2021-03-14', '2021-03-17', 631003);

VALUES (630025, 588013, 998154, 'blood iron test', 'xxx mg/dL', '2021-09-28', '2021-09-28', '2021-10-02', 631003);

INSERT INTO test
VALUES (630026, 588015, 938765, 'blood iron test', 'xxx mg/dL', '2017-08-21', '2017-08-21', '2017-08-26', 631004);
INSERT INTO test
VALUES (630027, 588020, 938765, 'blood iron test', 'xxx mg/dL', '2018-01-21', '2018-01-21', '2018-01-24', 631001);
INSERT INTO test
VALUES (630028, 588025, 938765, 'blood iron test', 'xxx mg/dL', '2018-05-12', '2018-05-12', '2018-05-15', 631005);


INSERT INTO test
VALUES (630029, 588028, 919289, 'blood iron test', 'xxx mg/dL', '2017-01-05', '2017-01-05', '2017-01-11', 631001);
INSERT INTO test
VALUES (630031, 588059, 919289, 'blood iron test', 'xxx mg/dL', '2017-07-19', '2017-07-19', '2017-07-23', 631003);

INSERT INTO test
VALUES (630032, 588051, 919289, 'blood iron test', 'xxx mg/dL', '2021-10-08', '2021-10-08', '2021-10-14', 631004);

INSERT INTO test
VALUES (630034, 588056, 934891, 'blood iron test', NULL, '2022-02-21', '2022-02-21', NULL, 631005);

