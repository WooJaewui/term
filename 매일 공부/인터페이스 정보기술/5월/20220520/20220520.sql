
SELECT * FROM RS_PCN
ORDER BY PCN_SEQNO DESC;

SELECT * FROM SY_UNIT
ORDER BY UNIT_SEQNO DESC;


SELECT * FROM SY_MENU
WHERE MENU_NM = '테스트 메뉴';

DELETE FROM SY_MENU
WHERE MENU_NM = '테스트 메뉴';

SELECT * FROM SY_MENU;

COMMIT;

SELECT * FROM SY_UNIT_TEST
ORDER BY UNIT_TEST_SEQNO DESC;


SELECT * FROM RS_PRDUCT;

SELECT * FROM AT_LOGIN_HIST;

