SELECT * FROM SY_ENTRPS;
SELECT * FROM SY_ENTRPS_SE A;

SELECT * FROM SY_INSPCT_INSTT;
SELECT * FROM SY_ENTRPS;

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'SY08';

SELECT
	A.ENTRPS_SEQNO,
	A.ENTRPS_NM,
  B.ENTRPS_SE_CODE,
	B.USE_AT
FROM SY_ENTRPS A
LEFT JOIN SY_ENTRPS_SE B ON
A.ENTRPS_SEQNO = B.ENTRPS_SEQNO;


SELECT *
FROM SY_ENTRPS A
LEFT JOIN SY_ENTRPS_SE B ON
A.ENTRPS_SEQNO = B.ENTRPS_SEQNO;

SELECT * FROM SY_ENTRPS;
SELECT * FROM SY_ENTRPS_SE;

INSERT INTO SY_ENTRPS
VALUES(
	SQ_SY_ENTRPS.NEXTVAL,
  1000,
  '테스트 고객사',
  'Y',
  'N',
  1,
  sysdate
);

INSERT INTO SY_ENTRPS_SE
VALUES(
	SQ_SY_ENTRPS.NEXTVAL,
  'SY08000001',
  1000,
  'Y',
  1,
	SYSDATE
);

ROLLBACK;

SELECT * FROM SY_ENTRPS
WHERE ENTRPS_SEQNO = 94;
SELECT * FROM SY_ENTRPS_SE
WHERE ENTRPS_SEQNO = 94;

UPDATE SY_ENTRPS SET
  ENTRPS_NM = '업데이트 테스트',
  LAST_CHANGER_ID = '1',
  LAST_CHANGE_DT = SYSDATE
WHERE ENTRPS_SEQNO = 93;

UPDATE SY_ENTRPS_SE SET
	ENTRPS_SE_CODE = 'SY08000002',
  USE_AT = 'N',
  LAST_CHANGER_ID = '1',
  LAST_CHANGE_DT = SYSDATE
WHERE ENTRPS_SEQNO = 93;

COMMIT;

