CREATE TABLE S_BOOK_ALLOCATION 
(
  BOOK_ID VARCHAR2(20 BYTE) NOT NULL 
, S_ID VARCHAR2(20 BYTE) 
, ALLOCATION_START_DATE DATE 
, ALLOCATION_END_DATE DATE 
, REMARKS VARCHAR2(400 BYTE) 
, LATE_FEES NUMBER 
, RETURN_DATE DATE 
, LATE_FEES_FLAG VARCHAR2(1 BYTE) 
, CONSTRAINT S_BOOK_ALLOCATION_PK PRIMARY KEY 
  (
    BOOK_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX S_BOOK_ALLOCATION_PK ON S_BOOK_ALLOCATION (BOOK_ID ASC) 
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
