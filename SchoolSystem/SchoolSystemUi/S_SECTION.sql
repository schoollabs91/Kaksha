CREATE TABLE S_SECTION 
(
  SECTION_ID NUMBER(10, 0) NOT NULL 
, SECTION_CODE VARCHAR2(30 BYTE) NOT NULL 
, SECTION_NAME VARCHAR2(20 BYTE) NOT NULL 
, ACTIVE_YN VARCHAR2(1 BYTE) 
, CONSTRAINT S_SECTION_PK PRIMARY KEY 
  (
    SECTION_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX S_SECTION_PK ON S_SECTION (SECTION_ID ASC) 
      LOGGING 
      TABLESPACE SYSTEM 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 1048576 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        FREELISTS 1 
        FREELIST GROUPS 1 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE SYSTEM 
PCTFREE 10 
PCTUSED 40 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  FREELISTS 1 
  FREELIST GROUPS 1 
  BUFFER_POOL DEFAULT 
) 
NOCOMPRESS;