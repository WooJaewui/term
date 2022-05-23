

SELECT * FROM CM_SANCTN;
SELECT * FROM CM_SANCTN_INFO;

SELECT A.SANCTN_PROGRS_SITTN_CODE, B.SANCTN_PROGRS_SITTN_CODE, B.USE_AT FROM CM_SANCTN A
LEFT JOIN CM_SANCTN_INFO B ON A.SANCTN_SEQNO = B.SANCTN_SEQNO;

SELECT MIN(A.SANCTN_PROGRS_SITTN_CODE) FROM CM_SANCTN_INFO A
WHERE A.SANCTN_SEQNO = 15
AND A.USE_AT ='Y';

SELECT * FROM CM_CN A
INNER JOIN CM_SANCTN B ON A.CN_SEQNO = B.CN_SEQNO;

SELECT * FROM CM_CN
ORDER BY LAST_CHANGE_DT DESC;

SELECT * FROM CM_SANCTN_INFO
ORDER BY SANCTN_SEQNO DESC;

SELECT * FROM RS_DOC;


SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'CM01';

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'CM02';


SELECT * FROM IM_REQEST;

SELECT * FROM RS_PCN;


SELECT B.MTRIL_NM FROM IM_REQEST A
LEFT JOIN SY_MTRIL B ON A.MTRIL_SEQNO = B.MTRIL_SEQNO;


SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO DESC;

UPDATE RS_PCN SET
BPLC_CODE = NULL;

COMMIT;

SELECT * FROM RS_AUDIT;
SELECT * FROM RS_AUDIT_CAR;


SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO DESC;

SELECT * FROM RS_PCN_CHANGEPOINT
ORDER BY LAST_CHANGE_DT DESC;

DELETE FROM RS_PCN_CHANGEPOINT
WHERE PCN_SEQNO = '284';


ROLLBACK;

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'RS23';


SELECT * FROM RS_PCN
WHERE PCN_NO LIKE '%04-000';

SELECT * FROM RS_PCN_CHANGEPOINT
WHERE PCN_SEQNO = '262';

SELECT * FROM RS_PCN_CHANGEPOINT;

SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO DESC;

SELECT * FROM RS_PCN
WHERE PCN_NO LIKE '%05-013';

SELECT * FROM RS_PCN_CHANGEPOINT
WHERE PCN_SEQNO = '283';


SELECT * FROM CM_SANCTN_INFO
WHERE SANCTN_SEQNO = 24;

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'CM01';


SELECT * FROM CM_SANCTN
ORDER BY SANCTN_SEQNO DESC;

SELECT * FROM CM_SANCTN_INFO
ORDER BY SANCTN_SEQNO DESC;

SELECT DISTINCT * FROM CM_SANCTN A
LEFT JOIN CM_SANCTN_INFO B ON A.SANCTN_SEQNO = B.SANCTN_SEQNO
ORDER BY A.SANCTN_SEQNO DESC;

SELECT * FROM CM_SANCTN;
SELECT * FROM CM_SANCTN_INFO;

/* ����Ʈ */
SELECT * FROM SY_PRINTNG
WHERE DELETE_AT = 'N'
AND USE_AT = 'Y'
ORDER BY PRINTNG_SEQNO DESC;

SELECT * FROM SY_PRINTNG
WHERE DELETE_AT = 'Y'
AND USE_AT = 'N';

SELECT * FROM SY_PRINTNG;

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'SY15';








