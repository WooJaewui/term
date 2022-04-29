
SELECT * FROM RS_PCN;
SELECT CHRG_DEPT_CODE FROM RS_PCN;
SELECT * FROM RS_PCN_CHANGEPOINT;

/* 담당부서 */
SELECT * FROM SY_INSPCT_INSTT;

/* 고객사 */
SELECT * FROM SY_ENTRPS;

SELECT * FROM CM_SANCTN_INFO
WHERE SANCTN_PROGRS_SITTN_CODE = 'CM01000003';

SELECT * FROM CM_SANCTN;
SELECT * FROM CM_SANCTN_INFO;
SELECT * FROM RS_PCN;
SELECT * FROM CM_CN;
SELECT * FROM RS_PCN;
SELECT * FROM RS_AUDIT;

SELECT * FROM RS_AUDIT_CAR
WHERE CAR_NO = 'FCC-CAR-22-04-003';
SELECT * FROM CM_SANCTN
WHERE SANCTN_SEQNO = 36;

SELECT * FROM CM_CN
WHERE CN_SEQNO = 35;


/* 공통 코드 */
SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'CM01';


/* 첨부 파일 */
SELECT * FROM SY_ATCHMNFL
WHERE ATCHMNFL_SEQNO = 62;
SELECT * FROM SY_ATCHMNFL_DETAIL
WHERE ATCHMNFL_SEQNO = 62
ORDER BY LAST_CHANGE_DT DESC;

SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO DESC;

SELECT * FROM RS_PCN
WHERE ATCHMNFL_SEQNO != 0;

/* 담당자 */
SELECT * FROM RS_PCN;
SELECT * FROM SY_USER;

SELECT * FROM SY_INSPCT_INSTT;

/* 결재선 */
SELECT * FROM RS_PCN;
SELECT * FROM SY_CMMN_CODE
WHERE CMMN_CODE = 'CM05000002';


/* 결재 */
SELECT * FROM RS_PCN;
SELECT * FROM RS_AUDIT;
SELECT * FROM CM_SANCTN;
SELECT * FROM CM_SANCTN_INFO;
SELECT * FROM SY_SANCTN_LINE;
SELECT * FROM SY_SANCTN_LINE_SANCTNER;
SELECT * FROM SY_CMMN_CODE
WHERE CMMN_CODE = 'CM05';

SELECT * FROM CM_SANCTN;

SELECT * FROM CM_SANCTN
JOIN SY_CMMN_CODE ON CMMN_CODE = SANCTN_PROGRS_SITTN_CODE;



/* 검토 */
SELECT * FROM CM_EXMNT
ORDER BY EXMNT_SEQNO;
SELECT * FROM CM_EXMNT_HIST
ORDER BY EXMNT_SEQNO;
SELECT * FROM RS_AUDIT;

SELECT * FROM CM_EXMNT;
SELECT * FROM RS_PCN;


/* 첨부 파일 */
SELECT * FROM RS_PCN;
SELECT * FROM RS_PCN_CHANGEPOINT;
COMMIT;

DELETE FROM RS_PCN_CHANGEPOINT;
DELETE FROM RS_PCN;

SELECT  IA.SANCTN_SEQNO
		            , LISTAGG(IB.USER_NM, ' > ') WITHIN GROUP(ORDER BY IA.SANCTN_ORDR) AS SANCTNER_NM
		    FROM CM_SANCTN_INFO IA
		    INNER JOIN SY_USER IB ON IA.SANCTNER_ID = IB.USER_ID
		    WHERE IA.USE_AT = 'Y'
		    GROUP BY IA.SANCTN_SEQNO;

SELECT * FROM CM_SANCTN_INFO;

SELECT * FROM RS_PCN;
SELECT LISTAGG(PCN_NM, ',') WITHIN GROUP(ORDER BY PCN_NM) AS PCN_NM
FROM RS_PCN;

SELECT LISTAGG(PCN_SEQNO, ',') WITHIN GROUP(ORDER BY PCN_NO) AS "에에에"
FROM RS_PCN;


/* 결제선 */
SELECT * FROM RS_PCN;
SELECT * FROM CM_SANCTN
WHERE SANCTN_SEQNO = 112;
SELECT * FROM CM_SANCTN_INFO
WHERE SANCTN_SEQNO = 112;



SELECT LISTAGG(PCN_SEQNO,',') WITHIN GROUP(ORDER BY PCN_NO) AS "하하"
FROM RS_PCN;


SELECT * FROM RS_AUDIT
WHERE AUDIT_NO = 'FCC-AD-22-04-007';

SELECT * FROM CM_SANCTN_INFO
WHERE SANCTN_SEQNO = 116;

SELECT * FROM CM_SANCTN
WHERE SANCTN_SEQNO = 116;

SELECT * FROM RS_PCN;

SELECT * FROM CM_SANCTN_INFO
WHERE SANCTN_SEQNO = 229;

SELECT * FROM CM_SANCTN
WHERE SANCTN_SEQNO = 229;

SELECT b.CN
FROM CM_SANCTN a
INNER JOIN CM_CN  b ON a.CN_SEQNO = b.CN_SEQNO
WHERE SANCTN_SEQNO = 242;


SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO;
SELECT * FROM SY_ATCHMNFL;
ORDER BY ATCHMNFL_SEQNO;

SELECT * FROM CM_CN
ORDER BY CN_SEQNO DESC;


SELECT * FROM RS_PCN
ORDER BY PCN_NO DESC;

DELETE FROM RS_PCN;
DELETE FROM RS_PCN_CHANGEPOINT;

COMMIT;

SELECT * FROM RS_PCN;

SELECT * FROM CM_SANCTN;
SELECT * FROM CM_SANCTN_INFO;

SELECT * FROM SY_CMMN_CODE;


		SELECT  *
		FROM SY_SANCTN_LINE
		WHERE SANCTN_KND_CODE = 'CM05000002'
		AND USE_AT = 'Y'
		AND DELETE_AT = 'N';

SELECT * FROM SY_SANCTN_LINE;

/* 교육 */
SELECT * FROM RS_EDC;
SELECT * FROM RS_EDC_USER;

