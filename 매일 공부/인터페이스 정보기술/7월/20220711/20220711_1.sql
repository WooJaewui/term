SELECT * FROM SY_ENTRPS;


SELECT * FROM PM_PRJCT_CHARGER;



UPDATE SY_ENTRPS SET
DELETE_AT = 'N'
WHERE ENTRPS_SEQNO = 1;

COMMIT;

SELECT * FROM PM_PRJCT;


SELECT * FROM SY_INSPCT_INSTT;
		SELECT
			CASE
				WHEN LEVEL <= 1 THEN MENU_NM
      	WHEN (LEVEL%2) = 0
				ELSE LPAD(' ', 2*(LEVEL-1), '??') || '?? ' || MENU_NM
			END AS KEY
			, PRJCT_MENU_SEQNO VALUE

		FROM PM_PRJCT_MENU

		WHERE PRJCT_SEQNO = 82
		  AND DELETE_AT = 'N'
		  AND USE_AT = 'Y'

		START WITH 			UPPER_PRJCT_MENU_SEQNO IS NULL
		CONNECT BY PRIOR    PRJCT_MENU_SEQNO = UPPER_PRJCT_MENU_SEQNO
		ORDER SIBLINGS BY   PRJCT_MENU_SEQNO ASC;

SELECT 10%2 FROM DUAL;


SELECT * FROM PM_UNIT_TEST;

UPDATE PM_UNIT_TEST SET
	TESTER_ID = 142;


SELECT * FROM SY_USER
WHERE LOGIN_ID = 'sychoi';


SELECT SQ_SY_USER.NEXTVAL FROM DUAL;

SELECT * FROM PM_UNIT_TEST;

SELECT * FROM SY_CMMN_CODE
WHERE UPPER_CMMN_CODE = 'PM03';




