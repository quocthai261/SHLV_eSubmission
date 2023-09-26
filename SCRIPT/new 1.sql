--DROP TABLE "CusRequestReason" CASCADE CONSTRAINTS;

CREATE TABLE "CusRequestReason"
(
  "CusRequestReasonId"               NUMBER(19)                   NOT NULL,
  "GroupName"        VARCHAR2(20 BYTE),
  "Name"             VARCHAR2(1000 BYTE),
  "Description"      VARCHAR2(1000 BYTE),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "CusRequestReason"."CusRequestReasonId" IS 'Identity';

COMMENT ON COLUMN "CusRequestReason"."GroupName" IS 'Tên nhóm lý do';

COMMENT ON COLUMN "CusRequestReason"."Name" IS 'Tên';

COMMENT ON COLUMN "CusRequestReason"."Description" IS 'Mô tả';

COMMENT ON COLUMN "CusRequestReason"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "CusRequestReason"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "CusRequestReason"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "CusRequestReason"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "CusRequestReasonPk" ON "CusRequestReason"
("CusRequestReasonId")
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE SEQUENCE "SeqCusRequestReason"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerCusRequestReason" BEFORE
INSERT
ON "CusRequestReason" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqCusRequestReason".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."CusRequestReasonId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerCusRequestReason";
/


ALTER TABLE "CusRequestReason" ADD (
  CONSTRAINT "CusRequestReasonPk"
  PRIMARY KEY
  ("CusRequestReasonId")
  USING INDEX "CusRequestReasonPk"
  ENABLE VALIDATE);
