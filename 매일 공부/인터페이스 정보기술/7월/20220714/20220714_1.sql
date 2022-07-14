SELECT * FROM SY_USER
ORDER BY USER_ID DESC;


/*------------------------------------------------------------------------------
-- 개체 이름: IIT_PM_USER.PKG_CRYPTO
-- 만든 날짜: 2022-06-14 오후 6:01:57
-- 마지막으로 수정한 날짜: 2022-06-14 오후 6:01:57
-- 상태: VALID
------------------------------------------------------------------------------*/
CREATE OR REPLACE PACKAGE BODY IIT_PM_USER.PKG_CRYPTO
IS
  SQLERRMSG   VARCHAR2(255);
  SQLERRCDE   NUMBER;
    /*
  사용법
  SELECT A.PASSWORD
         , PKG_CRYPTO.ENCRYPT(A.PASSWORD) ENC_PASS
         , PKG_CRYPTO.DECRYPT(PKG_CRYPTO.ENCRYPT(A.PASSWORD)) DEC_PASS
  FROM SY_USER A
  */

  FUNCTION ENCRYPT (INPUT_STRING IN VARCHAR2 , KEY_DATA IN VARCHAR2 := 'interface4433274')
      RETURN RAW
  IS

    INPUT_RAW RAW(1024);
    KEY_RAW RAW(16) := UTL_RAW.CAST_TO_RAW(KEY_DATA);
    V_OUT_RAW RAW(1024);

    AES_CBC_PKCS5 CONSTANT PLS_INTEGER := DBMS_CRYPTO.ENCRYPT_AES128 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5;

  BEGIN
    INPUT_RAW := UTL_I18N.STRING_TO_RAW(INPUT_STRING, 'AL32UTF8');
    V_OUT_RAW := DBMS_CRYPTO.ENCRYPT(
                  SRC => INPUT_RAW,
                  TYP => AES_CBC_PKCS5,
                  KEY => KEY_RAW);

      RETURN V_OUT_RAW;
  END ENCRYPT;

  FUNCTION DECRYPT (INPUT_STRING IN VARCHAR2 , KEY_DATA IN VARCHAR2 := 'interface4433274')
      RETURN VARCHAR2
  IS
    KEY_RAW RAW(16) := UTL_RAW.CAST_TO_RAW(KEY_DATA);
    OUTPUT_RAW RAW(1024);
    V_OUT_STRING VARCHAR2(1024);

    AES_CBC_PKCS5 CONSTANT PLS_INTEGER := DBMS_CRYPTO.ENCRYPT_AES128 + DBMS_CRYPTO.CHAIN_CBC + DBMS_CRYPTO.PAD_PKCS5;

  BEGIN
    OUTPUT_RAW := DBMS_CRYPTO.DECRYPT(
                  SRC => INPUT_STRING,
                  TYP => AES_CBC_PKCS5,
                  KEY => KEY_RAW);
      V_OUT_STRING := UTL_I18N.RAW_TO_CHAR(OUTPUT_RAW, 'AL32UTF8');

      RETURN V_OUT_STRING;
  END DECRYPT ;
END PKG_CRYPTO;






