
SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO DESC;

SELECT * FROM AT_QLITY_DOC_HIST;

SELECT * FROM SY_ENTRPS;

SELECT * FROM RS_PCN A
JOIN SY_ENTRPS B ON A.CTMMNY_SEQNO = B.ENTRPS_SEQNO;

SELECT * FROM SY_MENU
WHERE USE_AT = 'N';

UPDATE SY_MENU SET
USE_AT = 'Y'
WHERE MENU_SEQNO = 80;

COMMIT;

SELECT * FROM SY_BBS;

SELECT * FROM SY_ENTRPS;

SELECT * FROM SY_INSPCT_INSTT;

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'CM01';

SELECT * FROM SY_SANCTN_LINE_SANCTNER;

SELECT * FROM SY_EXPRIEM;

SELECT A.CALC_LAW_NM, A.NOMFRM_CN, A.NOMFRM_CN FROM SY_CALC_LAW A;

SELECT * FROM SY_SPC_MANAGE;
SELECT * FROM SY_EXCP_LOG
ORDER BY LAST_CHANGE_DT DESC;

SELECT * FROM SY_PRINTNG;
SELECT * FROM SY_PRINTNG_HIST;

SELECT * FROM SY_PRINTNG A
LEFT JOIN SY_PRINTNG_HIST B ON A.PRINTNG_SEQNO = B.PRINTNG_SEQNO;

SELECT * FROM SY_MTRIL_ITM;

SELECT A.* FROM RS_PRDUCT A
WHERE A.USE_AT = 'Y'
AND A.DELETE_AT = 'N'
ORDER BY A.PRDUCT_SEQNO DESC;

SELECT * FROM RS_PRDUCT_EXPRIEM;

SELECT * FROM AT_LOGIN_HIST;


















