SELECT * FROM SY_USER;

SELECT * FROM SY_MENU;

INSERT INTO SY_MENU VALUES(
	1062,
	1012,
	'사용자관리',
	NULL,
	NULL,
	'/wrk/UserM.lims',
  10700,
  'Y',
  1,
	SYSDATE
);

COMMIT;


SELECT * FROM SY_AUTHOR;
SELECT * FROM SY_AUTHOR_MENU;
SELECT * FROM SY_AUTHOR_USER;

INSERT INTO SY_AUTHOR VALUES(
	1,
  '시스템관리자',
	NULL,
  1,
 'Y',
	1,
  SYSDATE
);

INSERT INTO SY_AUTHOR_USER VALUES(
	1,
	1,
  'Y',
  'Y',
	'Y',
  'Y',
  1,
  SYSDATE
);

INSERT INTO SY_AUTHOR_MENU VALUES(
	1,
	1062,
	1,
  SYSDATE
);



ROLLBACK;
COMMIT;


3	9	Y	Y	Y	Y	1	2022-04-25 오후 4:18:06

5		전체메뉴				100	N		Y	Y	N	1	2022-03-24 오후 5:29:44
8	5	시스템관리				200	N		Y	Y	N	1	2022-03-25 오후 2:04:05


9	  8	시스템				 1100	 N	Y	Y	N	1	2022-03-24 오후 5:42:31

13	9	메뉴관리			/sys/MenuM.lims	10200	N		Y	Y	N	2	2022-03-24 오후 5:46:32
14	9	권한관리		CLOB TO BLOB	/sys/AuthM.lims	10300	N	?????벖????뢊??袋????	Y	Y	N	1	2022-03-25 오후 3:52:21
18	9	공통코드관리			/sys/CmmnCodeM.lims	10100	N		Y	Y	Y	1	2022-06-07 오후 5:51:51


21	8	업무 마스터		1200	N		Y	Y	N	1	2022-03-25 오전 11:25:28

22	21	조직 관리			/wrk/OrgM.lims	10600	N		Y	Y	N	1	2022-03-25 오전 11:29:45
23	21	사용자 관리			/wrk/UserM.lims	10700	N		Y	Y	N	1	2022-03-25 오전 11:30:15
