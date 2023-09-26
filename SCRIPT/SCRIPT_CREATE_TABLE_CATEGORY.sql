--DROP TABLE "MappingNextPositions" CASCADE CONSTRAINTS;

CREATE TABLE "MappingNextPositions"
(
  "MappingId"                     NUMBER(19)             NOT NULL,
  "CurrentPositionCode"  NVARCHAR2(50),
  "NextPositionCode"     NVARCHAR2(50),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "MappingNextPositions"."MappingId" IS '"MappingId"entity';

COMMENT ON COLUMN "MappingNextPositions"."CurrentPositionCode" IS 'Vị trí hiện tại';

COMMENT ON COLUMN "MappingNextPositions"."NextPositionCode" IS 'Vị trí tiếp theo';

COMMENT ON COLUMN "MappingNextPositions"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "MappingNextPositions"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "MappingNextPositions"."LastUpdatedDate" IS 'Ngày cập nhật';

COMMENT ON COLUMN "MappingNextPositions"."LastUpdatedBy" IS 'Người cập nhật';


CREATE UNIQUE INDEX "MapNextPosPk" ON "MappingNextPositions"
("MappingId")
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

CREATE SEQUENCE "SeqMapNextPos"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerMapNextPos" BEFORE
INSERT
ON "MappingNextPositions" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqMapNextPos".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."MappingId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Cons"MappingId"er logging the error and then re-raise
    RAISE;
END "TriggerMapNextPos";
/


ALTER TABLE "MappingNextPositions" ADD (
  CONSTRAINT "MapNextPosPk"
  PRIMARY KEY
  ("MappingId")
  USING INDEX "MapNextPosPk"
  ENABLE VALIDATE);


--DROP TABLE "FinancialQuestions" CASCADE CONSTRAINTS;

CREATE TABLE "FinancialQuestions"
(
  "FinQuestionId"                 NUMBER(12)                 NOT NULL,
  "ProductTypeCode"  VARCHAR2(20 BYTE),
  "QuestionCode"               VARCHAR2(20 BYTE),
  "QuestionName"               NVARCHAR2(255),
  "QuestionType"               NUMBER(2),
  "Step"               NUMBER(2),
  "IsActive"          NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "FinancialQuestions"."FinQuestionId" IS '"FinQuestionId"entity';

COMMENT ON COLUMN "FinancialQuestions"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "FinancialQuestions"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "FinancialQuestions"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "FinancialQuestions"."LastUpdatedBy" IS 'Người cập nhật sau cùng';

CREATE UNIQUE INDEX "FinQuestionsPk" ON "FinancialQuestions"
("FinQuestionId")
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

CREATE SEQUENCE "SeqFinQuestions"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerFinQuestions" BEFORE
INSERT
ON "FinancialQuestions" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqFinQuestions".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."FinQuestionId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerFinQuestions";
/


ALTER TABLE "FinancialQuestions" ADD (
  CONSTRAINT "FinQuestionsPk"
  PRIMARY KEY
  ("FinQuestionId")
  USING INDEX "FinQuestionsPk"
  ENABLE VALIDATE);


--DROP TABLE "FinancialAnswers" CASCADE CONSTRAINTS;

CREATE TABLE "FinancialAnswers"
(
  "FinAnswerId"               NUMBER(12)                   NOT NULL,
  "QuestionCode"   VARCHAR2(20 BYTE),
  "AnswerCode"             VARCHAR2(20 BYTE),
  "Index"              NUMBER(5),
  "IsActive"          NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "AnswerType"             NUMBER(2),
  "AnswerName"            NCLOB
)
LOB ("AnswerName") STORE AS BASICFILE (
  TABLESPACE  USERS
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
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

COMMENT ON COLUMN "FinancialAnswers"."FinAnswerId" IS 'Identity';

COMMENT ON COLUMN "FinancialAnswers"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "FinancialAnswers"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "FinancialAnswers"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "FinancialAnswers"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "FinAnswersPk" ON "FinancialAnswers"
("FinAnswerId")
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

CREATE SEQUENCE "SeqFinAnswers"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerFinAnswers" BEFORE
INSERT
ON "FinancialAnswers" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqFinAnswers".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."FinAnswerId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerFinAnswers";
/


ALTER TABLE "FinancialAnswers" ADD (
  CONSTRAINT "FinAnswersPk"
  PRIMARY KEY
  ("FinAnswerId")
  USING INDEX "FinAnswersPk"
  ENABLE VALIDATE);


--DROP TABLE "FinancialProductType" CASCADE CONSTRAINTS;

CREATE TABLE "FinancialProductType"
(
  "FinProductTypeId"               NUMBER(12)                   NOT NULL,
  "ProductTypeCode"             VARCHAR2(20 BYTE),
  "Image"            NVARCHAR2(500),
  "ProductTypeName"             NVARCHAR2(255),
  "Description"      NVARCHAR2(500),
  "UrlProduct"      NVARCHAR2(500),
  "IsActive"          NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "FinancialProductType"."FinProductTypeId" IS 'Identity';

COMMENT ON COLUMN "FinancialProductType"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "FinancialProductType"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "FinancialProductType"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "FinancialProductType"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "FinProductTypePk" ON "FinancialProductType"
("FinProductTypeId")
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

CREATE SEQUENCE "SeqFinProductType"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerFinProductType" BEFORE
INSERT
ON "FinancialProductType" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqFinProductType".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."FinProductTypeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerFinProductType";
/


ALTER TABLE "FinancialProductType" ADD (
  CONSTRAINT "FinProductTypePk"
  PRIMARY KEY
  ("FinProductTypeId")
  USING INDEX "FinProductTypePk"
  ENABLE VALIDATE);


--DROP TABLE "Formulas" CASCADE CONSTRAINTS;

CREATE TABLE "Formulas"
(
  "FormulaId"               NUMBER(19)                   NOT NULL,
  "ValueOne"        VARCHAR2(20 BYTE),
  "ValueTwo"        VARCHAR2(20 BYTE),
  "Description"      NVARCHAR2(256),
  "Type"             NUMBER(8),
  "IsActive"          NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "Formulas"."FormulaId" IS 'Identity';

COMMENT ON COLUMN "Formulas"."ValueOne" IS 'Giá trị 1';

COMMENT ON COLUMN "Formulas"."ValueTwo" IS 'Giá trị 2';

COMMENT ON COLUMN "Formulas"."Description" IS 'Mô tả';

COMMENT ON COLUMN "Formulas"."Type" IS 'Loại: phân biệt quan hệ giữa các vế(1: chung, 2: dùng để liên kết các quan hệ)';

COMMENT ON COLUMN "Formulas"."IsActive" IS 'Sử dụng';

COMMENT ON COLUMN "Formulas"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Formulas"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Formulas"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Formulas"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "FormulasPk" ON "Formulas"
("FormulaId")
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

CREATE SEQUENCE "SeqFormulas"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerFormulas" BEFORE
INSERT
ON "Formulas" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqFormulas".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."FormulaId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerFormulas";
/


ALTER TABLE "Formulas" ADD (
  CONSTRAINT "FormulasPk"
  PRIMARY KEY
  ("FormulaId")
  USING INDEX "FormulasPk"
  ENABLE VALIDATE);

--DDROP TABLE "AgentMoveTypes" CASCADE CONSTRAINTS;

CREATE TABLE "AgentMoveTypes"
(
  "AgentMoveTypeId"               NUMBER(19)                   NOT NULL,
  "TypeCode"         NVARCHAR2(50),
  "TypeName"         NVARCHAR2(100),
  "Description"      NVARCHAR2(150),
  "IsActive"          NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "AgentMoveTypes"."AgentMoveTypeId" IS 'Identity';

COMMENT ON COLUMN "AgentMoveTypes"."TypeCode" IS 'Mã loại';

COMMENT ON COLUMN "AgentMoveTypes"."TypeName" IS 'Tên loại';

COMMENT ON COLUMN "AgentMoveTypes"."Description" IS 'Mô tả loại';

COMMENT ON COLUMN "AgentMoveTypes"."IsActive" IS 'Sử dụng';

COMMENT ON COLUMN "AgentMoveTypes"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "AgentMoveTypes"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "AgentMoveTypes"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "AgentMoveTypes"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "AgentMoveTypesPk" ON "AgentMoveTypes"
("AgentMoveTypeId")
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

CREATE SEQUENCE "SeqAgentMoveTypes"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerAgentMoveTypes" BEFORE
INSERT
ON "AgentMoveTypes" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqAgentMoveTypes".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."AgentMoveTypeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerAgentMoveTypes";
/


ALTER TABLE "AgentMoveTypes" ADD (
  CONSTRAINT "AgentMoveTypesPk"
  PRIMARY KEY
  ("AgentMoveTypeId")
  USING INDEX "AgentMoveTypesPk"
  ENABLE VALIDATE);


--DROP TABLE "Answers" CASCADE CONSTRAINTS;

CREATE TABLE "Answers"
(
  
  "AnswerId" NUMBER(19)                   NOT NULL,
  "CriteriaId"       NUMBER(19),
  "AnswerContent"    NVARCHAR2(256),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "Index"           NUMBER(8),
  "AnswerCode"       VARCHAR2(50 BYTE)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Answers"."AnswerId" IS 'Identity';

COMMENT ON COLUMN "Answers"."CriteriaId" IS 'Liên kết với tiêu chí';

COMMENT ON COLUMN "Answers"."AnswerContent" IS 'Nội dung câu trả lời';

COMMENT ON COLUMN "Answers"."Index" IS 'Thứ tự sắp xếp';

COMMENT ON COLUMN "Answers"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Answers"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Answers"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Answers"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "AnswersPk" ON "Answers"
("AnswerId")
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

CREATE SEQUENCE "SeqAnswers"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerAnswers" BEFORE
INSERT
ON "Answers" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqAnswers".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."AnswerId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerAnswers";
/


ALTER TABLE "Answers" ADD (
  CONSTRAINT "AnswersPk"
  PRIMARY KEY
  ("AnswerId")
  USING INDEX "AnswersPk"
  ENABLE VALIDATE);


--DROP TABLE "Banks" CASCADE CONSTRAINTS;

CREATE TABLE "Banks"
(
  "BankId"               NUMBER(19)                   NOT NULL,
  "BankCode"         VARCHAR2(50 BYTE),
  "BankName"         NVARCHAR2(256),
  "BankIcon"             NVARCHAR2(256),
  "Color1"           VARCHAR2(50 BYTE),
  "Color2"           VARCHAR2(50 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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


COMMENT ON COLUMN "Banks"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Banks"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Banks"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Banks"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "BanksPk" ON "Banks"
("BankId")
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

CREATE SEQUENCE "SeqBanks"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerBanks" BEFORE
INSERT
ON "Banks" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqBanks".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."BankId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerBanks";
/


ALTER TABLE "Banks" ADD (
  CONSTRAINT "BanksPk"
  PRIMARY KEY
  ("BankId")
  USING INDEX "BanksPk"
  ENABLE VALIDATE);

--DROP TABLE "BankOrg" CASCADE CONSTRAINTS;

CREATE TABLE "BankOrg"
(
  "BankOrgId"      NUMBER(12)                   NOT NULL,
  "BankOrgName"    VARCHAR2(100 BYTE)           NOT NULL,
  "BankOrgCode"    VARCHAR2(50 BYTE)            NOT NULL,
  "IdType"          NUMBER(2),
  "IdNumber"        VARCHAR2(50 BYTE),
  "AbbrName"        VARCHAR2(50 BYTE),
  "Status"           CHAR(1 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON TABLE "BankOrg" IS 'Ngân hàng';

COMMENT ON COLUMN "BankOrg"."BankOrgId" IS 'Identity';

COMMENT ON COLUMN "BankOrg"."BankOrgName" IS 'Tên ngân hàng';

COMMENT ON COLUMN "BankOrg"."BankOrgCode" IS 'Mã ngân hàng';

COMMENT ON COLUMN "BankOrg"."IdType" IS 'Identity';

COMMENT ON COLUMN "BankOrg"."IdNumber" IS 'Identity';

COMMENT ON COLUMN "BankOrg"."AbbrName" IS 'Tên viết tắt';

COMMENT ON COLUMN "BankOrg"."Status" IS 'Tình trạng';

COMMENT ON COLUMN "BankOrg"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "BankOrg"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "BankOrg"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "BankOrg"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "BankOrg"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "BankOrgPk" ON "BankOrg"
("BankOrgId")
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

CREATE SEQUENCE "SeqBankOrg"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerBankOrg" BEFORE
INSERT
ON "BankOrg" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqBankOrg".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."BankOrgId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerBankOrg";
/


ALTER TABLE "BankOrg" ADD (
  CONSTRAINT "BankOrgPk"
  PRIMARY KEY
  ("BankOrgId")
  USING INDEX "BankOrgPk"
  ENABLE VALIDATE);



--DROP TABLE "Benefit" CASCADE CONSTRAINTS;

CREATE TABLE "Benefit"
(
  "BenefitId"               NUMBER(19)                   NOT NULL,
  "BenefitCode"             NVARCHAR2(50),
  "BenefitName"             NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Benefit"."BenefitId" IS 'Identity';

COMMENT ON COLUMN "Benefit"."BenefitCode" IS 'Mã bảo hiểm';

COMMENT ON COLUMN "Benefit"."BenefitName" IS 'Tên bảo hiểm tiếng Anh';

COMMENT ON COLUMN "Benefit"."IsActive" IS 'Có còn được sử dụng không';

COMMENT ON COLUMN "Benefit"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Benefit"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Benefit"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Benefit"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "BenefitPk" ON "Benefit"
("BenefitId")
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

CREATE SEQUENCE "SeqBenefit"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerBenefit" BEFORE
INSERT
ON "Benefit" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqBenefit".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."BenefitId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerBenefit";
/


ALTER TABLE "Benefit" ADD (
  CONSTRAINT "BenefitPk"
  PRIMARY KEY
  ("BenefitId")
  USING INDEX "BenefitPk"
  ENABLE VALIDATE);


--DROP TABLE "ChargeMode" CASCADE CONSTRAINTS;

CREATE TABLE "ChargeMode"
(
  "ChargeModeId"        NUMBER(19)                   NOT NULL,
  "ChargeModeName"      VARCHAR2(50 BYTE)            NOT NULL,
  "ChargeModeNameVN"   NVARCHAR2(100),
  "IsActive"         NUMBER(1),
  "ChargeType"      CHAR(1 BYTE),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON TABLE "ChargeMode" IS 'Ðịnh kỳ đóng phí';

COMMENT ON COLUMN "ChargeMode"."ChargeModeId" IS 'Identity';

COMMENT ON COLUMN "ChargeMode"."ChargeModeName" IS 'Ðịnh kỳ đóng phí tiếng Anh';

COMMENT ON COLUMN "ChargeMode"."ChargeModeNameVN" IS 'Ðịnh kỳ đóng phí tiếng Việt';

COMMENT ON COLUMN "ChargeMode"."IsActive" IS 'Có còn được sử dụng hay không';

COMMENT ON COLUMN "ChargeMode"."ChargeType" IS 'Loại định kỳ đóng phí';

COMMENT ON COLUMN "ChargeMode"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "ChargeMode"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "ChargeMode"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "ChargeMode"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "ChargeModePk" ON "ChargeMode"
("ChargeModeId")
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

CREATE SEQUENCE "SeqChargeMode"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerChargeMode" BEFORE
INSERT
ON "ChargeMode" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqChargeMode".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."ChargeModeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerChargeMode";
/


ALTER TABLE "ChargeMode" ADD (
  CONSTRAINT "ChargeModePk"
  PRIMARY KEY
  ("ChargeModeId")
  USING INDEX "ChargeModePk"
  ENABLE VALIDATE);


--DROP TABLE "ClaimStatus" CASCADE CONSTRAINTS;

CREATE TABLE "ClaimStatus"
(
  "ClaimStatusId"        NUMBER(2)                    NOT NULL,
  "ClaimStatusName"      VARCHAR2(100 BYTE)           NOT NULL,
  "ClaimStatusNameVN"   NVARCHAR2(100),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON TABLE "ClaimStatus" IS 'Tình trạng hồ sơ';

COMMENT ON COLUMN "ClaimStatus"."ClaimStatusId" IS 'Identity';

COMMENT ON COLUMN "ClaimStatus"."ClaimStatusName" IS 'Tình trạng hồ sơ tiếng Anh';

COMMENT ON COLUMN "ClaimStatus"."ClaimStatusNameVN" IS 'Tình trạng hồ sơ tiếng Việt';

COMMENT ON COLUMN "ClaimStatus"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "ClaimStatus"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "ClaimStatus"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "ClaimStatus"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "ClaimStatus"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "ClaimStatusPk" ON "ClaimStatus"
("ClaimStatusId")
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

CREATE SEQUENCE "SeqClaimStatus"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerClaimStatus" BEFORE
INSERT
ON "ClaimStatus" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqClaimStatus".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."ClaimStatusId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerClaimStatus";
/


ALTER TABLE "ClaimStatus" ADD (
  CONSTRAINT "ClaimStatusPk"
  PRIMARY KEY
  ("ClaimStatusId")
  USING INDEX "ClaimStatusPk"
  ENABLE VALIDATE);


--DROP TABLE "ClaimType" CASCADE CONSTRAINTS;

CREATE TABLE "ClaimType"
(
  "ClaimTypeId"                NUMBER(19)                  NOT NULL,
  "Description"         VARCHAR2(200 BYTE)          NOT NULL,
  "ClaimTypeCode"         VARCHAR2(200 BYTE)          NOT NULL,
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "IsActiveForClaim"  NUMBER(1),
  "IsRequireDoc"      NUMBER(1)                   DEFAULT 0
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

COMMENT ON TABLE "ClaimType" IS 'Loại quyền lợi bảo hiểm';

COMMENT ON COLUMN "ClaimType"."ClaimTypeId" IS 'Loại quyền lợi bảo hiểm';

COMMENT ON COLUMN "ClaimType"."Description" IS 'Mô tả loại quyền lợi';

COMMENT ON COLUMN "ClaimType"."ClaimTypeCode" IS 'Mô tả viết tắt';

COMMENT ON COLUMN "ClaimType"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "ClaimType"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "ClaimType"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "ClaimType"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "ClaimType"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "ClaimTypePk" ON "ClaimType"
("ClaimTypeId")
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

CREATE SEQUENCE "SeqClaimType"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerClaimType" BEFORE
INSERT
ON "ClaimType" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqClaimType".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."ClaimTypeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerClaimType";
/


ALTER TABLE "ClaimType" ADD (
  CONSTRAINT "ClaimTypePk"
  PRIMARY KEY
  ("ClaimTypeId")
  USING INDEX "ClaimTypePk"
  ENABLE VALIDATE);

--DROP TABLE "Criterias" CASCADE CONSTRAINTS;

CREATE TABLE "Criterias"
(
  "CriteriaId"               NUMBER(19)                   NOT NULL,
  "CriteriaContent"  NVARCHAR2(256),
  "CriteriaType"     NUMBER(8),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "CriteriaCode"     VARCHAR2(50 BYTE),
  "Icon"             NVARCHAR2(256)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Criterias"."CriteriaId" IS 'Identity';

COMMENT ON COLUMN "Criterias"."CriteriaContent" IS 'Tên tiêu chí đánh giá';

COMMENT ON COLUMN "Criterias"."CriteriaType" IS 'Loại tiêu chí: 1 - Chọn 1, 2 - Chọn nhiều, 3 - Nhập text';

COMMENT ON COLUMN "Criterias"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "Criterias"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Criterias"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Criterias"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Criterias"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "CriteriasPk" ON "Criterias"
("CriteriaId")
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

CREATE SEQUENCE "SeqCriterias"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerCriterias" BEFORE
INSERT
ON "Criterias" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqCriterias".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."CriteriaId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerCriterias";
/


ALTER TABLE "Criterias" ADD (
  CONSTRAINT "CriteriasPk"
  PRIMARY KEY
  ("CriteriaId")
  USING INDEX "CriteriasPk"
  ENABLE VALIDATE);


--DROP TABLE "CustomerType" CASCADE CONSTRAINTS;

CREATE TABLE "CustomerType"
(
  "CustomerTypeId"                 NUMBER(19)                 NOT NULL,
  "CustomerTypeCode"  NVARCHAR2(50),
  "CustomerTypeName"  NVARCHAR2(100),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "CustomerType"."CustomerTypeId" IS 'Identity';

COMMENT ON COLUMN "CustomerType"."CustomerTypeCode" IS 'Mã loại khách hàng';

COMMENT ON COLUMN "CustomerType"."CustomerTypeName" IS 'Tên loại khách hàng';

COMMENT ON COLUMN "CustomerType"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "CustomerType"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "CustomerType"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "CustomerType"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "CustomerType"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "CustomerTypePk" ON "CustomerType"
("CustomerTypeId")
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

CREATE SEQUENCE "SeqCustomerType"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerCustomerType" BEFORE
INSERT
ON "CustomerType" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqCustomerType".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."CustomerTypeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerCustomerType";
/


ALTER TABLE "CustomerType" ADD (
  CONSTRAINT "CustomerTypePk"
  PRIMARY KEY
  ("CustomerTypeId")
  USING INDEX "CustomerTypePk"
  ENABLE VALIDATE);


--DROP TABLE "Districts" CASCADE CONSTRAINTS;

CREATE TABLE "Districts"
(
  "DistrictId"               NUMBER(19)                   NOT NULL,
  "ProvinceId"       NUMBER(19),
  "DistrictCode"     NVARCHAR2(20),
  "DistrictName"     NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "RegionId"         NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Districts"."DistrictId" IS 'Identity';

COMMENT ON COLUMN "Districts"."ProvinceId" IS 'ID tỉnh';

COMMENT ON COLUMN "Districts"."DistrictCode" IS 'Mã quận';

COMMENT ON COLUMN "Districts"."DistrictName" IS 'Tên quận';

COMMENT ON COLUMN "Districts"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "Districts"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Districts"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Districts"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Districts"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "DistrictsPk" ON "Districts"
("DistrictId")
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

CREATE SEQUENCE "SeqDistricts"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerDistricts" BEFORE
INSERT
ON "Districts" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqDistricts".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."DistrictId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerDistricts";
/


ALTER TABLE "Districts" ADD (
  CONSTRAINT "DistrictsPk"
  PRIMARY KEY
  ("DistrictId")
  USING INDEX "DistrictsPk"
  ENABLE VALIDATE);

--DROP TABLE "Gender" CASCADE CONSTRAINTS;

CREATE TABLE "Gender"
(
  "GenderId"        NUMBER(19)                   NOT NULL,
  "GenderCode"      CHAR(1 BYTE),
  "GenderDescription"      VARCHAR2(50 BYTE),
  "GenderDescriptionVN"   VARCHAR2(50 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON TABLE "Gender" IS 'Giới tính';

COMMENT ON COLUMN "Gender"."GenderId" IS 'Identity';

COMMENT ON COLUMN "Gender"."GenderCode" IS 'Mã giới tính';

COMMENT ON COLUMN "Gender"."GenderDescription" IS 'Giới tính tiếng Anh';

COMMENT ON COLUMN "Gender"."GenderDescriptionVN" IS 'Giới tính tiếng Việt';

COMMENT ON COLUMN "Gender"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "Gender"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Gender"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Gender"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Gender"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "GenderPk" ON "Gender"
("GenderId")
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

CREATE SEQUENCE "SeqGender"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerGender" BEFORE
INSERT
ON "Gender" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqGender".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."GenderId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerGender";
/


ALTER TABLE "Gender" ADD (
  CONSTRAINT "GenderPk"
  PRIMARY KEY
  ("GenderId")
  USING INDEX "GenderPk"
  ENABLE VALIDATE);

--DROP TABLE "JobCategories" CASCADE CONSTRAINTS;

CREATE TABLE "JobCategories"
(
  "JobCategoryId"               NUMBER(19)                   NOT NULL,
  "JobCategoryCode"          NVARCHAR2(50),
  "JobCategoryName"          NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "JobCategories"."JobCategoryId" IS 'Identity';

COMMENT ON COLUMN "JobCategories"."JobCategoryCode" IS 'Mã nghề';

COMMENT ON COLUMN "JobCategories"."JobCategoryName" IS 'Tên nghề';

COMMENT ON COLUMN "JobCategories"."IsActive" IS 'có còn được sử dụng hay không';

COMMENT ON COLUMN "JobCategories"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "JobCategories"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "JobCategories"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "JobCategories"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "JobCategoriesPk" ON "JobCategories"
("JobCategoryId")
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

CREATE SEQUENCE "SeqJobCategories"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerJobCategories" BEFORE
INSERT
ON "JobCategories" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqJobCategories".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."JobCategoryId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerJobCategories";
/


ALTER TABLE "JobCategories" ADD (
  CONSTRAINT "JobCategoriesPk"
  PRIMARY KEY
  ("JobCategoryId")
  USING INDEX "JobCategoriesPk"
  ENABLE VALIDATE);

--DROP TABLE "MapCriPosition" CASCADE CONSTRAINTS;

CREATE TABLE "MapCriPosition"
(
  "MapCriPositionId"               NUMBER(19)                   NOT NULL,
  "PositionId"       NUMBER(19),
  "CriteriaId"       NUMBER(19),
  "Index"           NUMBER(8),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "MapCriPosition"."MapCriPositionId" IS 'Identity';

COMMENT ON COLUMN "MapCriPosition"."PositionId" IS 'Liên kết với vị trí';

COMMENT ON COLUMN "MapCriPosition"."CriteriaId" IS 'Liên kết với tiêu chí';

COMMENT ON COLUMN "MapCriPosition"."Index" IS 'Thứ tự của tiêu chí khi mapping';

COMMENT ON COLUMN "MapCriPosition"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "MapCriPosition"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "MapCriPosition"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "MapCriPosition"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "MapCriPositionPk" ON "MapCriPosition"
("MapCriPositionId")
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

CREATE SEQUENCE "SeqMapCriPosition"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerMapCriPosition" BEFORE
INSERT
ON "MapCriPosition" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqMapCriPosition".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."MapCriPositionId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerMapCriPosition";
/


ALTER TABLE "MapCriPosition" ADD (
  CONSTRAINT "MapCriPositionPk"
  PRIMARY KEY
  ("MapCriPositionId")
  USING INDEX "MapCriPositionPk"
  ENABLE VALIDATE);


--DROP TABLE "Marriage" CASCADE CONSTRAINTS;

CREATE TABLE "Marriage"
(
  "MarriageId"      NUMBER(2)                    NOT NULL,
  "MarriageName"         VARCHAR2(100 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Marriage"."MarriageId" IS 'Identity';

COMMENT ON COLUMN "Marriage"."MarriageName" IS 'Tình trạng hôn nhân';

COMMENT ON COLUMN "Marriage"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "Marriage"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Marriage"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Marriage"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Marriage"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "MarriagePk" ON "Marriage"
("MarriageId")
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

CREATE SEQUENCE "SeqMarriage"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerMarriage" BEFORE
INSERT
ON "Marriage" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqMarriage".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."MarriageId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerMarriage";
/


ALTER TABLE "Marriage" ADD (
  CONSTRAINT "MarriagePk"
  PRIMARY KEY
  ("MarriageId")
  USING INDEX "MarriagePk"
  ENABLE VALIDATE);


--DROP TABLE "Nationalities" CASCADE CONSTRAINTS;

CREATE TABLE "Nationalities"
(
  "NationalityId"               NUMBER(19)                   NOT NULL,
  "NationalityCode"       NVARCHAR2(50),
  "NationalityName"       NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Nationalities"."NationalityId" IS 'Identity';

COMMENT ON COLUMN "Nationalities"."NationalityCode" IS 'Mã quốc tịch';

COMMENT ON COLUMN "Nationalities"."NationalityName" IS 'Quốc tịch tiếng anh';

COMMENT ON COLUMN "Nationalities"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "Nationalities"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Nationalities"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Nationalities"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Nationalities"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "NationalitiesPk" ON "Nationalities"
("NationalityId")
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

CREATE SEQUENCE "SeqNationalities"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerNationalities" BEFORE
INSERT
ON "Nationalities" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqNationalities".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."NationalityId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerNationalities";
/


ALTER TABLE "Nationalities" ADD (
  CONSTRAINT "NationalitiesPk"
  PRIMARY KEY
  ("NationalityId")
  USING INDEX "NationalitiesPk"
  ENABLE VALIDATE);

--DROP TABLE "PayMode" CASCADE CONSTRAINTS;

CREATE TABLE "PayMode"
(
  "PayModeId"          NUMBER(2)                    NOT NULL,
  "PayModeName"        VARCHAR2(40 BYTE)            NOT NULL,
  "PayModeType"        VARCHAR2(20 BYTE),
  "PayModeNameVN"     NVARCHAR2(100),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "PayMode"."PayModeId" IS 'Identity';

COMMENT ON COLUMN "PayMode"."PayModeName" IS 'Tên phương thức nhận tiền tiếng anh';

COMMENT ON COLUMN "PayMode"."PayModeType" IS 'Loại Phương thức (1 là Phương thức thánh toán/đóng phí, 2 là phương thức nhận tiền)';

COMMENT ON COLUMN "PayMode"."PayModeNameVN" IS 'Tên tiếng việt phương thức nhận tiền yêu cầu tạm ứng giá trị hoàn lại';

COMMENT ON COLUMN "PayMode"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "PayMode"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "PayMode"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "PayMode"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "PayMode"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "PayModePk" ON "PayMode"
("PayModeId")
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

CREATE SEQUENCE "SeqPayMode"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerPayMode" BEFORE
INSERT
ON "PayMode" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqPayMode".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."PayModeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerPayMode";
/


ALTER TABLE "PayMode" ADD (
  CONSTRAINT "PayModePk"
  PRIMARY KEY
  ("PayModeId")
  USING INDEX "PayModePk"
  ENABLE VALIDATE);


--DROP TABLE "PolicyStatus" CASCADE CONSTRAINTS;

CREATE TABLE "PolicyStatus"
(
  "PolicyStatusId"               NUMBER(19)                   NOT NULL,
  "PolicyStatusCode"       NVARCHAR2(20),
  "PolicyStatusName"       NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "PolicyStatus"."PolicyStatusId" IS 'Identity';

COMMENT ON COLUMN "PolicyStatus"."PolicyStatusCode" IS 'Mã tình trạng hợp đồng';

COMMENT ON COLUMN "PolicyStatus"."PolicyStatusName" IS 'Tên tình trạng hợp đồng';

COMMENT ON COLUMN "PolicyStatus"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "PolicyStatus"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "PolicyStatus"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "PolicyStatus"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "PolicyStatus"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "PolicyStatusPk" ON "PolicyStatus"
("PolicyStatusId")
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

CREATE SEQUENCE "SeqPolicyStatus"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerPolicyStatus" BEFORE
INSERT
ON "PolicyStatus" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqPolicyStatus".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."PolicyStatusId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerPolicyStatus";
/


ALTER TABLE "PolicyStatus" ADD (
  CONSTRAINT "PolicyStatusPk"
  PRIMARY KEY
  ("PolicyStatusId")
  USING INDEX "PolicyStatusPk"
  ENABLE VALIDATE);

--DROP TABLE "PositionApplings" CASCADE CONSTRAINTS;

CREATE TABLE "PositionApplings"
(
  "PositionApplingsId"                   NUMBER(19)               NOT NULL,
  "PositionApplingCode"  NVARCHAR2(50),
  "PositionApplingName"  NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "Image"                NVARCHAR2(256)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "PositionApplings"."PositionApplingsId" IS 'Identity';

COMMENT ON COLUMN "PositionApplings"."PositionApplingCode" IS 'Mã vị trí ứng tuyển';

COMMENT ON COLUMN "PositionApplings"."PositionApplingName" IS 'Tên vị trí ứng tuyển';

COMMENT ON COLUMN "PositionApplings"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "PositionApplings"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "PositionApplings"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "PositionApplings"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "PositionApplings"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "PositionApplingsPk" ON "PositionApplings"
("PositionApplingsId")
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

CREATE SEQUENCE "SeqPositionApplings"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerPositionApplings" BEFORE
INSERT
ON "PositionApplings" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqPositionApplings".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."PositionApplingsId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerPositionApplings";
/


ALTER TABLE "PositionApplings" ADD (
  CONSTRAINT "PositionApplingsPk"
  PRIMARY KEY
  ("PositionApplingsId")
  USING INDEX "PositionApplingsPk"
  ENABLE VALIDATE);

--DROP TABLE "Positions" CASCADE CONSTRAINTS;

CREATE TABLE "Positions"
(
  "PositionId"                NUMBER(19)                  NOT NULL,
  "PositionCode"      NVARCHAR2(50),
  "PositionName"      NVARCHAR2(100),
  "IsRegister"        NUMBER(1),
  "IsApproval"        NUMBER(1),
  "Description"       NVARCHAR2(2000),
  "Image"             NVARCHAR2(256),
  "NextPosition"      NVARCHAR2(50),
  "NextPositionDescription"  NVARCHAR2(2000),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Positions"."PositionId" IS 'Identity';

COMMENT ON COLUMN "Positions"."PositionCode" IS 'Mã vị trí';

COMMENT ON COLUMN "Positions"."PositionName" IS 'Tên vị trí';

COMMENT ON COLUMN "Positions"."IsRegister" IS 'Sử dụng cho đăng ký FC';

COMMENT ON COLUMN "Positions"."IsApproval" IS 'Sử dụng cho quy trình quê duyệt';

COMMENT ON COLUMN "Positions"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "Positions"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Positions"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Positions"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Positions"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "PositionsPk" ON "Positions"
("PositionId")
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

CREATE SEQUENCE "SeqPositions"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerPositions" BEFORE
INSERT
ON "Positions" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqPositions".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."PositionId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerPositions";
/


ALTER TABLE "Positions" ADD (
  CONSTRAINT "PositionsPk"
  PRIMARY KEY
  ("PositionId")
  USING INDEX "PositionsPk"
  ENABLE VALIDATE);


--DROP TABLE "Province" CASCADE CONSTRAINTS;

CREATE TABLE "Province"
(
  "ProvinceId"          NUMBER(19)                   NOT NULL,
  "ProvinceCode"        VARCHAR2(3 BYTE)             NOT NULL,
  "ProvinceName"        VARCHAR2(100 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON TABLE "Province" IS 'Danh mục tỉnh thành';

COMMENT ON COLUMN "Province"."ProvinceId" IS 'Identity';

COMMENT ON COLUMN "Province"."ProvinceCode" IS 'Mã tỉnh thành';

COMMENT ON COLUMN "Province"."ProvinceName" IS 'Tên tỉnh thành';


COMMENT ON COLUMN "Province"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "Province"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Province"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Province"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Province"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "ProvincePk" ON "Province"
("ProvinceId")
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

CREATE SEQUENCE "SeqProvince"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerProvince" BEFORE
INSERT
ON "Province" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqProvince".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."ProvinceId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerProvince";
/


ALTER TABLE "Province" ADD (
  CONSTRAINT "ProvincePk"
  PRIMARY KEY
  ("ProvinceId")
  USING INDEX "ProvincePk"
  ENABLE VALIDATE);


--DDROP TABLE "RegisterBfcStatus" CASCADE CONSTRAINTS;

CREATE TABLE "RegisterBfcStatus"
(
  "RegisterBfcStatusId"                     NUMBER(19)             NOT NULL,
  "RegisterBfcStatusCode"  NVARCHAR2(20),
  "RegisterBfcStatusName"  NVARCHAR2(50),
  "PositionId"             NUMBER(19),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "RegisterBfcStatus"."RegisterBfcStatusId" IS 'Identity';

COMMENT ON COLUMN "RegisterBfcStatus"."RegisterBfcStatusCode" IS 'Mã trạng thái YC đăng ký BFC';

COMMENT ON COLUMN "RegisterBfcStatus"."RegisterBfcStatusName" IS 'Tên trạng thái YC đăng ký BFC';

COMMENT ON COLUMN "RegisterBfcStatus"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "RegisterBfcStatus"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "RegisterBfcStatus"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "RegisterBfcStatus"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "RegisterBfcStatus"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "RegisterBfcStatusPk" ON "RegisterBfcStatus"
("RegisterBfcStatusId")
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

CREATE SEQUENCE "SeqRegisterBfcStatus"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerRegisterBfcStatus" BEFORE
INSERT
ON "RegisterBfcStatus" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqRegisterBfcStatus".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."RegisterBfcStatusId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerRegisterBfcStatus";
/


ALTER TABLE "RegisterBfcStatus" ADD (
  CONSTRAINT "RegisterBfcStatusPk"
  PRIMARY KEY
  ("RegisterBfcStatusId")
  USING INDEX "RegisterBfcStatusPk"
  ENABLE VALIDATE);


--DROP TABLE "Relations" CASCADE CONSTRAINTS;

CREATE TABLE "Relations"
(
  "RelationId"               NUMBER(19)                   NOT NULL,
  "RelationCode"     NVARCHAR2(20),
  "RelationName"     NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Relations"."RelationId" IS 'Identity';

COMMENT ON COLUMN "Relations"."RelationCode" IS 'Mã mối quan hệ';

COMMENT ON COLUMN "Relations"."RelationName" IS 'Mối quan hệ';

COMMENT ON COLUMN "Relations"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "Relations"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Relations"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Relations"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Relations"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "RelationsPk" ON "Relations"
("RelationId")
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

CREATE SEQUENCE "SeqRelations"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerRelations" BEFORE
INSERT
ON "Relations" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqRelations".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."RelationId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerRelations";
/


ALTER TABLE "Relations" ADD (
  CONSTRAINT "RelationsPk"
  PRIMARY KEY
  ("RelationId")
  USING INDEX "RelationsPk"
  ENABLE VALIDATE);

--DROP TABLE "SalaryPeriods" CASCADE CONSTRAINTS;

CREATE TABLE "SalaryPeriods"
(
  "SalaryPeriodId"               NUMBER(19)                   NOT NULL,
  "SalaryPeriodCode"       NVARCHAR2(50),
  "SalaryPeriodType"       NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "SalaryPeriods"."SalaryPeriodId" IS 'Identity';

COMMENT ON COLUMN "SalaryPeriods"."SalaryPeriodCode" IS 'Mã loại lương';

COMMENT ON COLUMN "SalaryPeriods"."SalaryPeriodType" IS 'Loại lương';

COMMENT ON COLUMN "SalaryPeriods"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "SalaryPeriods"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SalaryPeriods"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SalaryPeriods"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SalaryPeriods"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SalaryPeriodsPk" ON "SalaryPeriods"
("SalaryPeriodId")
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

CREATE SEQUENCE "SeqSalaryPeriods"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerSalaryPeriods" BEFORE
INSERT
ON "SalaryPeriods" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSalaryPeriods".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."SalaryPeriodId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerSalaryPeriods";
/


ALTER TABLE "SalaryPeriods" ADD (
  CONSTRAINT "SalaryPeriodsPk"
  PRIMARY KEY
  ("SalaryPeriodId")
  USING INDEX "SalaryPeriodsPk"
  ENABLE VALIDATE);


--DROP TABLE "Wards" CASCADE CONSTRAINTS;

CREATE TABLE "Wards"
(
  "WardId"               NUMBER(19)                   NOT NULL,
  "DistrictId"       NUMBER(19),
  "WardCode"         NVARCHAR2(20),
  "WardName"         NVARCHAR2(50),
  "SalaryPeriodType"       NVARCHAR2(50),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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
NOLOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "Wards"."WardId" IS 'Identity';

COMMENT ON COLUMN "Wards"."DistrictId" IS 'ID quận';

COMMENT ON COLUMN "Wards"."WardCode" IS 'Mã phường';

COMMENT ON COLUMN "Wards"."WardName" IS 'Tên phường';

COMMENT ON COLUMN "Wards"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "Wards"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Wards"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Wards"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Wards"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "WardsPk" ON "Wards"
("WardId")
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

CREATE SEQUENCE "SeqWards"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerWards" BEFORE
INSERT
ON "Wards" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqWards".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."WardId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerWards";
/


ALTER TABLE "Wards" ADD (
  CONSTRAINT "WardsPk"
  PRIMARY KEY
  ("WardId")
  USING INDEX "WardsPk"
  ENABLE VALIDATE);


--DROP TABLE "ProDeCriteria" CASCADE CONSTRAINTS;

CREATE TABLE "ProDeCriteria"
(
  "ProDeCriteriaId"               NUMBER(19)                   NOT NULL,
  "Title"            NVARCHAR2(256),
  "Code"             VARCHAR2(64 BYTE),
  "Unit"             NVARCHAR2(100),
  "Icon"             NVARCHAR2(256),
  "EndPoint"         NVARCHAR2(256),
  "ProcessColor"    VARCHAR2(20 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "ProDeCriteria"."ProDeCriteriaId" IS 'Identity';

COMMENT ON COLUMN "ProDeCriteria"."Title" IS 'Tiêu đề';

COMMENT ON COLUMN "ProDeCriteria"."Code" IS 'Mã';

COMMENT ON COLUMN "ProDeCriteria"."Unit" IS 'Đơn vị';

COMMENT ON COLUMN "ProDeCriteria"."Icon" IS 'Biểu tượng';

COMMENT ON COLUMN "ProDeCriteria"."IsActive" IS 'Có còn sử dụng không';

COMMENT ON COLUMN "ProDeCriteria"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "ProDeCriteria"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "ProDeCriteria"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "ProDeCriteria"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "ProDeCriteriaPk" ON "ProDeCriteria"
("ProDeCriteriaId")
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

CREATE SEQUENCE "SeqProDeCriteria"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerProDeCriteria" BEFORE
INSERT
ON "ProDeCriteria" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqProDeCriteria".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."ProDeCriteriaId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerProDeCriteria";
/


ALTER TABLE "ProDeCriteria" ADD (
  CONSTRAINT "ProDeCriteriaPk"
  PRIMARY KEY
  ("ProDeCriteriaId")
  USING INDEX "ProDeCriteriaPk"
  ENABLE VALIDATE);

--DROP TABLE "RegisterContest" CASCADE CONSTRAINTS;

CREATE TABLE "RegisterContest"
(
  "RegisterContestId"               NUMBER(19)                   NOT NULL,
  "UserId"           NUMBER(19),
  "ContestId"        VARCHAR2(64 BYTE),
  "RegisterDate"     DATE,
  "Option"          VARCHAR2(100 BYTE),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "RegisterContest"."RegisterContestId" IS 'Identity';

COMMENT ON COLUMN "RegisterContest"."UserId" IS 'Identify user';

COMMENT ON COLUMN "RegisterContest"."ContestId" IS 'Identify Contest';

COMMENT ON COLUMN "RegisterContest"."RegisterDate" IS 'Ngày đăng ký';

COMMENT ON COLUMN "RegisterContest"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "RegisterContest"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "RegisterContest"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "RegisterContest"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "RegisterContestPk" ON "RegisterContest"
("RegisterContestId")
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

CREATE SEQUENCE "SeqRegisterContest"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerRegisterContest" BEFORE
INSERT
ON "RegisterContest" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqRegisterContest".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."RegisterContestId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerRegisterContest";
/


ALTER TABLE "RegisterContest" ADD (
  CONSTRAINT "RegisterContestPk"
  PRIMARY KEY
  ("RegisterContestId")
  USING INDEX "RegisterContestPk"
  ENABLE VALIDATE);


--DROP TABLE "SalePlanConfig" CASCADE CONSTRAINTS;

CREATE TABLE "SalePlanConfig"
(
  "SalePlanConfigId"               NUMBER(19)                   NOT NULL,
  "PositionCode"     NVARCHAR2(50),
  "AllowCreateDay"   NUMBER(10),
  "AllowEditDay"     NUMBER(10),
  "PlanType"         NUMBER(8),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "SalePlanConfig"."SalePlanConfigId" IS 'Identity';

COMMENT ON COLUMN "SalePlanConfig"."PositionCode" IS 'Mã vị trí';

COMMENT ON COLUMN "SalePlanConfig"."AllowCreateDay" IS 'Ngày cho phép tạo';

COMMENT ON COLUMN "SalePlanConfig"."AllowEditDay" IS 'Ngày cho phép điều chỉnh';

COMMENT ON COLUMN "SalePlanConfig"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SalePlanConfig"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SalePlanConfig"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SalePlanConfig"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SalePlanConfigPk" ON "SalePlanConfig"
("SalePlanConfigId")
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

CREATE SEQUENCE "SeqSalePlanConfig"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerSalePlanConfig" BEFORE
INSERT
ON "SalePlanConfig" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSalePlanConfig".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."SalePlanConfigId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerSalePlanConfig";
/


ALTER TABLE "SalePlanConfig" ADD (
  CONSTRAINT "SalePlanConfigPk"
  PRIMARY KEY
  ("SalePlanConfigId")
  USING INDEX "SalePlanConfigPk"
  ENABLE VALIDATE);


--DROP TABLE "SalePlanConfigDetail" CASCADE CONSTRAINTS;

CREATE TABLE "SalePlanConfigDetail"
(
  "SalePlanConfigDetailId"               NUMBER(19)                   NOT NULL,
  "SalePlanConfigId"         NUMBER(19),
  "PlanTypeCode"     VARCHAR2(64 BYTE),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON COLUMN "SalePlanConfigDetail"."SalePlanConfigDetailId" IS 'Identity';

COMMENT ON COLUMN "SalePlanConfigDetail"."SalePlanConfigId" IS 'ID cấu hình kế hoạch';

COMMENT ON COLUMN "SalePlanConfigDetail"."PlanTypeCode" IS 'Mã loại kế hoạch';

COMMENT ON COLUMN "SalePlanConfigDetail"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SalePlanConfigDetail"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SalePlanConfigDetail"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SalePlanConfigDetail"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SalePlanConfigDetailPk" ON "SalePlanConfigDetail"
("SalePlanConfigDetailId")
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

CREATE SEQUENCE "SeqSalePlanConfigDetail"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerSalePlanConfigDetail" BEFORE
INSERT
ON "SalePlanConfigDetail" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSalePlanConfigDetail".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."SalePlanConfigDetailId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerSalePlanConfigDetail";
/


ALTER TABLE "SalePlanConfigDetail" ADD (
  CONSTRAINT "SalePlanConfigDetailPk"
  PRIMARY KEY
  ("SalePlanConfigDetailId")
  USING INDEX "SalePlanConfigDetailPk"
  ENABLE VALIDATE);


--DROP TABLE "CertiType" CASCADE CONSTRAINTS;

CREATE TABLE "CertiType"
(
  "CertiTypeId"          NUMBER(19)                   NOT NULL,
  "CertiTypeName"             VARCHAR2(50 BYTE),
  "CertiTypeNameVN"          VARCHAR2(50 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
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

COMMENT ON TABLE "CertiType" IS 'Loại giấy tờ tùy thân';

COMMENT ON COLUMN "CertiType"."CertiTypeId" IS 'Identity';

COMMENT ON COLUMN "CertiType"."CertiTypeName" IS 'Loại giấy tờ tùy thân tiếng Anh';

COMMENT ON COLUMN "CertiType"."CertiTypeNameVN" IS 'Loại giấy tờ tùy thân tiếng Việt';

COMMENT ON COLUMN "CertiType"."IsActive" IS 'Có còn được sử dụng hay không';

COMMENT ON COLUMN "CertiType"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "CertiType"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "CertiType"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "CertiType"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "CertiTypePk" ON "CertiType"
("CertiTypeId")
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

CREATE SEQUENCE "SeqCertiType"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerCertiType" BEFORE
INSERT
ON "CertiType" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqCertiType".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."CertiTypeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerCertiType";
/


ALTER TABLE "CertiType" ADD (
  CONSTRAINT "CertiTypePk"
  PRIMARY KEY
  ("CertiTypeId")
  USING INDEX "CertiTypePk"
  ENABLE VALIDATE);

--DROP TABLE "CusRequestDocType" CASCADE CONSTRAINTS;

CREATE TABLE "CusRequestDocType"
(
  "CusRequestDocTypeId"               NUMBER(19)                   NOT NULL,
  "RequestType"      NUMBER(2),
  "DocTypeName"      VARCHAR2(500 BYTE),
  "IsActive"         NUMBER(1),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "IsRequired"       NUMBER(1)
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

COMMENT ON COLUMN "CusRequestDocType"."CusRequestDocTypeId" IS 'Identity';

COMMENT ON COLUMN "CusRequestDocType"."RequestType" IS 'Loại yêu cầu';

COMMENT ON COLUMN "CusRequestDocType"."DocTypeName" IS 'Tên loại chứng từ';

COMMENT ON COLUMN "CusRequestDocType"."IsActive" IS 'Có còn được sử dụng hay không';

COMMENT ON COLUMN "CusRequestDocType"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "CusRequestDocType"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "CusRequestDocType"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "CusRequestDocType"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "CusRequestDocTypePk" ON "CusRequestDocType"
("CusRequestDocTypeId")
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

CREATE SEQUENCE "SeqCusRequestDocType"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerCusRequestDocType" BEFORE
INSERT
ON "CusRequestDocType" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqCusRequestDocType".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."CusRequestDocTypeId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerCusRequestDocType";
/


ALTER TABLE "CusRequestDocType" ADD (
  CONSTRAINT "CusRequestDocTypePk"
  PRIMARY KEY
  ("CusRequestDocTypeId")
  USING INDEX "CusRequestDocTypePk"
  ENABLE VALIDATE);


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
  "LastUpdatedBy"    NUMBER(19)
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


--DROP TABLE "Diagnosis" CASCADE CONSTRAINTS;

CREATE TABLE "Diagnosis"
(
  "DiagnosisId"          NUMBER(12)                   NOT NULL,
  "DiagnoDescription"      VARCHAR2(1000 BYTE),
  "ParentId"        NUMBER(12),
  "DiagnoCategory"  NUMBER(2)                    NOT NULL,
  "DiagnoName"      VARCHAR2(1000 BYTE)          NOT NULL,
  "Acceptable"       CHAR(1 BYTE),
  "IsActive"         NUMBER(1)                    DEFAULT (null),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
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

COMMENT ON TABLE "Diagnosis" IS 'Mã chu?n doán chính';

COMMENT ON COLUMN "Diagnosis"."DiagnosisId" IS 'Identity';

COMMENT ON COLUMN "Diagnosis"."DiagnoDescription" IS 'Mô tả chuẩn đoán tiếng Anh';

COMMENT ON COLUMN "Diagnosis"."ParentId" IS 'Identity';

COMMENT ON COLUMN "Diagnosis"."DiagnoCategory" IS 'Loại mã chuẩn đoán';

COMMENT ON COLUMN "Diagnosis"."DiagnoName" IS 'Mã chuẩn đoán tiếng Anh';

COMMENT ON COLUMN "Diagnosis"."IsActive" IS 'Có còn được sử dụng hay không';

COMMENT ON COLUMN "Diagnosis"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "Diagnosis"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "Diagnosis"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "Diagnosis"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "DiagnosisPk" ON "Diagnosis"
("DiagnosisId")
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

CREATE SEQUENCE "SeqDiagnosis"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

CREATE OR REPLACE TRIGGER "TriggerDiagnosis" BEFORE
INSERT
ON "Diagnosis" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqDiagnosis".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."DiagnosisId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    RAISE;
END "TriggerDiagnosis";
/


ALTER TABLE "Diagnosis" ADD (
  CONSTRAINT "DiagnosisPk"
  PRIMARY KEY
  ("DiagnosisId")
  USING INDEX "DiagnosisPk"
  ENABLE VALIDATE);
