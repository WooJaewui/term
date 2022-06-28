SELECT * FROM PM_PRJCT_MENU;

UPDATE PM_PRJCT_MENU SET
DELETE_AT = 'N';

COMMIT;


SELECT * FROM PM_UNIT_TEST;

INSERT INTO PM_UNIT_TEST(
	UNIT_TEST_SEQNO
  , PRJCT_MENU_SEQNO
  , TESTER_ID
  , TEST_DT
  , TEST_CN
  , TEST_SE_CODE
  , PROGRS_SITTN_CODE
  , RERGIST_NUMOT
  , DELETE_AT
  , LAST_CHANGER_ID
  , LAST_CHANGE_DT
)VALUES(
	SQ_PM_UNIT_TEST.NEXTVAL
  , 21
  , 1
  , SYSDATE
  , '테스트 내용입니다'
	, 'PM04000001'
  , 'PM03000004'
  , 0
  , 'N'
  , 1
  , SYSDATE
);

UPDATE PM_UNIT_TEST SET
	PRJCT_MENU_SEQNO = 21
  , TESTER_ID = 1
  , TEST_DT = SYSDATE
  , TEST_CN = '테스트 내용이요'
  , TEST_SE_CODE = 'PM04000002'
  , PROGRS_SITTN_CODE = 'PM03000004'
  , RERGIST_NUMOT = (SELECT (RERGIST_NUMOT+1) FROM PM_UNIT_TEST WHERE UNIT_TEST_SEQNO = 24)
  , LAST_CHANGER_ID = 1
  , LAST_CHANGE_DT = SYSDATE

WHERE UNIT_TEST_SEQNO = 24;

COMMIT;


SELECT * FROM PM_UNIT_TEST;


UPDATE PM_UNIT_TEST SET
	PROCESS_TIME = 2
  , OPETR_ID = 127
  , PROCESS_DT = SYSDATE
  , PROGRS_SITTN_CODE = 'PM03000004'
  , PROCESS_CN = '처리 내용 테스트'
  , LAST_CHANGER_ID = 1
  , LAST_CHANGE_DT = SYSDATE
WHERE UNIT_TEST_SEQNO = 25;


UPDATE PM_UNIT_TEST SET
	DELETE_AT = 'N';

COMMIT;


SELECT * FROM PM_PRJCT_MENU;SORT_ORDR,

SELECT * FROM PM_PRJCT
WHERE USE_AT = 'Y'
AND DELETE_AT = 'N';

UPDATE PM_PRJCT SET
	CHRG_DEPT_SEQNO = 51,
  ENTRPS_SEQNO = 1
WHERE PRJCT_SEQNO = 41;

COMMIT;


UPDATE PM_PRJCT_MENU SET
	SORT_ORDR = 1
WHERE PRJCT_MENU_SEQNO = 1;


SELECT * FROM PM_PRJCT;

SELECT * FROM SY_INSPCT_INSTT
WHERE PRJCT_MANAGE_DEPT_AT = 'Y';


