
SELECT * FROM RS_AUDIT
ORDER BY AUDIT_SEQNO DESC;

SELECT * FROM RS_AUDIT
WHERE AUDIT_NO LIKE '%FCC-AD-22-05-011%'
ORDER BY AUDIT_SEQNO DESC;

SELECT * FROM SY_UNIT;

SELECT * FROM SY_ENTRPS
ORDER BY ENTRPS_SEQNO DESC;

INSERT INTO SY_ENTRPS
VALUES(
	200000,
  1000,
  1000,
  'Y',
  'N',
  '',
  SYSDATE
);

DELETE FROM SY_ENTRPS
WHERE ENTRPS_SEQNO = 200000;



SELECT B.CMMN_CODE_NM FROM RS_PCN A
LEFT JOIN SY_CMMN_CODE B ON A.PCN_RESULT_CODE = B.CMMN_CODE
ORDER BY PCN_SEQNO DESC;

SELECT * FROM RS_PCN;

SELECT * FROM SY_CMMN_CODE;

SELECT * FROM SY_UNIT_TEST
WHERE TEST_CN LIKE '%전체 사용자%'
ORDER BY LAST_CHANGE_DT DESC;

SELECT * FROM SY_ENTRPS A
LEFT JOIN SY_ENTRPS_SE B ON A.ENTRPS_SEQNO = B.ENTRPS_SEQNO AND B.ENTRPS_SE_CODE ='SY08000001'
LEFT JOIN SY_ENTRPS_SE C ON B.ENTRPS_SEQNO = C.ENTRPS_SEQNO AND C.ENTRPS_SE_CODE = 'SY08000002'
WHERE A.DELETE_AT = 'N'
AND (B.ENTRPS_SE_CODE =  'SY08000001' AND B.USE_AT = 'Y' OR C.ENTRPS_SE_CODE =  'SY08000001' AND C.USE_AT = 'Y');


SELECT * FROM SY_ENTRPS A
LEFT JOIN SY_ENTRPS_SE B ON A.ENTRPS_SEQNO = B.ENTRPS_SEQNO
WHERE A.ENTRPS_NM = '천보1';

