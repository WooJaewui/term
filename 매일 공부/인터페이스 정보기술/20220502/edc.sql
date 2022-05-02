SELECT * FROM RS_EDC
WHERE DELETE_AT = 'N';

SELECT * FROM RS_EDC_USER;

SELECT * FROM SY_USER;

/* 담당부서 */
SELECT * FROM SY_INSPCT_INSTT;

/* 자격 부여 */
SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'RS10';

/* 셀렉트 쿼리 */
SELECT
	D.*,
	C.USER_NM,
  E.CMMN_CODE_NM AS edcSeDetailNm,
  D.EDC_SJ,
  FN_GET_CDDTLNM(D.EDC_SE_DETAIL_CODE) EDC_SE_NM,
  CASE WHEN C.USER_NM IS NOT NULL
        THEN (CASE WHEN B.EDC_USER_CNT > 0
                   THEN C.USER_NM || ' 외 ' || B.EDC_USER_CNT || '명'
                   ELSE C.USER_NM
              END)
        ELSE ''
  END EDC_USER,
	D.EDC_BEGIN_DTE,
  D.EDC_END_DTE,
  D.EVLER_NM,
  D.EVL_CN,
  A.EVL_RESULT_VALUE,
	F.CMMN_CODE_NM AS edcQualfAlwncCode,
  CASE WHEN D.NXTTRM_EDC_TRGET_AT = 'Y'
                  THEN '대상'
                  ELSE '대상 아님'
             END NXT_EDC_TRGET_AT_NM,
	G.INSPCT_INSTT_NM
FROM RS_EDC_USER A
LEFT JOIN (
            SELECT
                IA.EDC_SEQNO
                ,MIN(IA.USER_ID) REP_EDC_USER
                ,COUNT(IA.EDC_USER_SEQNO)-1 EDC_USER_CNT
            FROM RS_EDC_USER IA
            LEFT JOIN SY_USER IB ON IB.USER_ID = IA.USER_ID AND IB.USE_AT = 'Y' AND IB.DELETE_AT = 'N'
            WHERE IA.USE_AT = 'Y'
              AND IA.DELETE_AT = 'N'
            GROUP BY IA.EDC_SEQNO
        ) B ON B.EDC_SEQNO = A.EDC_SEQNO
LEFT JOIN SY_USER C ON A.USER_ID = C.USER_ID
LEFT JOIN RS_EDC D ON A.EDC_SEQNO = D.EDC_SEQNO
LEFT JOIN SY_CMMN_CODE E ON D.EDC_SE_CODE = E.CMMN_CODE
LEFT JOIN SY_CMMN_CODE F ON F.CMMN_CODE = A.EDC_QUALF_ALWNC_CODE
LEFT JOIN SY_INSPCT_INSTT G ON G.INSPCT_INSTT_CODE = C.DEPT_CODE
WHERE D.DELETE_AT = 'N'
AND C.DELETE_AT = 'N';

SELECT * FROM RS_EDC;

SELECT * FROM SY_USER;


SELECT * FROM RS_EDC A
JOIN RS_EDC_USER B ON A.EDC_SEQNO = B.EDC_SEQNO
WHERE A.DELETE_AT = 'N'
AND B.DELETE_AT = 'N';

SELECT * FROM RS_EDC
WHERE DELETE_AT = 'N';

/* EDC 완료 */

SELECT * FROM SY_USER;
SELECT * FROM CM_SANCTN;
SELECT * FROM CM_SANCTN_INFO;



