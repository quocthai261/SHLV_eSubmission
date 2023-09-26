--SysActivityLogs--

CREATE TABLE "SysActivityLogs"
(
  "ActivityLogId"    NUMBER(19)                   NOT NULL,
  "UserName"        NVARCHAR2(50),
  "Service"         NVARCHAR2(50)                NOT NULL,
  "IpAddress"        NVARCHAR2(50),
  "Client"           NVARCHAR2(300),
  "Host"             NVARCHAR2(50),
  "Time"             DATE                         NOT NULL,
  "CustomData"       NVARCHAR2(2000),
  "State"            NUMBER(1),
  "Action"           NVARCHAR2(2000),
  "Duration"         NUMBER(19),
  "Source"           NVARCHAR2(30),
  "Device"           NVARCHAR2(30),
  "Brand"            NVARCHAR2(30),
  "Model"            NVARCHAR2(30),
  "CreationDate"     DATE,
  "CreatedBy"        NUMBER(19),
  "LastUpdatedDate"  DATE,
  "LastUpdatedBy"    NUMBER(19),
  "Os"               VARCHAR2(30 BYTE),
  "Provider"         VARCHAR2(50 BYTE),
  "Parameters"       CLOB
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

COMMENT ON COLUMN "SysActivityLogs"."ActivityLogId" IS 'Identity';

COMMENT ON COLUMN "SysActivityLogs"."UserName" IS 'Tên người đăng nhập';

COMMENT ON COLUMN "SysActivityLogs"."Service" IS 'Dịch vụ';

COMMENT ON COLUMN "SysActivityLogs"."IpAddress" IS 'Địa chỉ IP';

COMMENT ON COLUMN "SysActivityLogs"."Client" IS 'Máy trạm';

COMMENT ON COLUMN "SysActivityLogs"."Host" IS 'Máy chủ';

COMMENT ON COLUMN "SysActivityLogs"."Time" IS 'Thời gian';

COMMENT ON COLUMN "SysActivityLogs"."CustomData" IS 'Dữ liệu';

COMMENT ON COLUMN "SysActivityLogs"."State" IS 'Trạng thái';

COMMENT ON COLUMN "SysActivityLogs"."Action" IS 'Hành động';

COMMENT ON COLUMN "SysActivityLogs"."Duration" IS 'Thời lượng';

COMMENT ON COLUMN "SysActivityLogs"."Source" IS 'Nguồn';

COMMENT ON COLUMN "SysActivityLogs"."Device" IS 'Thiết bị';

COMMENT ON COLUMN "SysActivityLogs"."Brand" IS 'Nhãn hiệu';

COMMENT ON COLUMN "SysActivityLogs"."Model" IS 'Model';

COMMENT ON COLUMN "SysActivityLogs"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysActivityLogs"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysActivityLogs"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysActivityLogs"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysActivityLogsPk" ON "SysActivityLogs"
("ActivityLogId")
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

CREATE OR REPLACE TRIGGER "TriggerSysActivityLogs" BEFORE
INSERT
ON "SysActivityLogs" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysActivityLogs".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."ActivityLogId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysActivityLogs";
/


ALTER TABLE "SysActivityLogs" ADD (
  CONSTRAINT "SysActivityLogsPk"
  PRIMARY KEY
  ("ActivityLogId")
  USING INDEX "SysActivityLogsPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysActivityLogs"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

--SysUsers--
CREATE TABLE "SysUsers"
(
  "UserId"        NUMBER(19)            NOT NULL,
  "ReferentId"       VARCHAR2(64 BYTE),
  "UserName"         NVARCHAR2(256)               NOT NULL,
  "UserType"         NUMBER(2)                    NOT NULL,
  "UserRule"         NUMBER(2)                    NOT NULL,
  "Provider"         NVARCHAR2(16),
  "Name"             NVARCHAR2(100),
  "SurName"          NVARCHAR2(100),
  "Email"           NVARCHAR2(100),
  "PhoneNumber"      NVARCHAR2(16),
  "LastLogin"        DATE,
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

COMMENT ON COLUMN "SysUsers"."UserId" IS 'ID HLV cung c?p';

COMMENT ON COLUMN "SysUsers"."ReferentId" IS 'Liên kết đến FCCode';

COMMENT ON COLUMN "SysUsers"."UserName" IS 'Tên đăng nhập';

COMMENT ON COLUMN "SysUsers"."UserType" IS 'Loại người dùng';

COMMENT ON COLUMN "SysUsers"."UserRule" IS 'Vai trò người dùng';

COMMENT ON COLUMN "SysUsers"."Provider" IS 'Social';

COMMENT ON COLUMN "SysUsers"."Name" IS 'Tên';

COMMENT ON COLUMN "SysUsers"."SurName" IS 'Họ';

COMMENT ON COLUMN "SysUsers"."LastLogin" IS 'Ngày đăng nhập gần nhất';

COMMENT ON COLUMN "SysUsers"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysUsers"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysUsers"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysUsers"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysUsersPk" ON "SysUsers"
("UserId")
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

CREATE OR REPLACE TRIGGER "TriggerSysUsers" BEFORE
INSERT
ON "SysUsers" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysUsers".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."UserId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysUsers";
/


ALTER TABLE "SysUsers" ADD (
  CONSTRAINT "SysUsersPk"
  PRIMARY KEY
  ("UserId")
  USING INDEX "SysUsersPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysUsers"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

 --SysLanguage--
CREATE TABLE "SysLanguage"
(
  "LanguageId"         NUMBER(19)                 NOT NULL,
  "Name"               VARCHAR2(100 BYTE)         NOT NULL,
  "LanguageCulture"    VARCHAR2(20 BYTE)          NOT NULL,
  "FlagImageFileName"  VARCHAR2(50 BYTE),
  "DisplayOrder"       NUMBER(3),
  "IsActive"           NUMBER(1),
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

COMMENT ON COLUMN "SysLanguage"."LanguageId" IS 'Identity';

COMMENT ON COLUMN "SysLanguage"."Name" IS 'Tên ngôn ngữ';

COMMENT ON COLUMN "SysLanguage"."LanguageCulture" IS 'Culture';

COMMENT ON COLUMN "SysLanguage"."FlagImageFileName" IS 'Hình ảnh';

COMMENT ON COLUMN "SysLanguage"."DisplayOrder" IS 'Thứ tự hiển thị';

COMMENT ON COLUMN "SysLanguage"."IsActive" IS 'Sử dụng';

COMMENT ON COLUMN "SysLanguage"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysLanguage"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysLanguage"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysLanguage"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysLanguagePk" ON "SysLanguage"
("LanguageId")
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

CREATE OR REPLACE TRIGGER "TriggerSysLanguage" BEFORE
INSERT
ON "SysLanguage" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysLanguage".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."LanguageId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysLanguage";
/


ALTER TABLE "SysLanguage" ADD (
  CONSTRAINT "SysLanguagePk"
  PRIMARY KEY
  ("LanguageId")
  USING INDEX "SysLanguagePk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysLanguage"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

 --SysLocaleMessages--
CREATE TABLE "SysLocaleMessages"
(
  "LocaleMessagesId"               NUMBER(19)                   NOT NULL,
  "LanguageId"       NUMBER(19)                   NOT NULL,
  "MessageName"      VARCHAR2(200 BYTE)           NOT NULL,
  "MessageValue"     VARCHAR2(500 BYTE)           NOT NULL,
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

COMMENT ON COLUMN "SysLocaleMessages"."LocaleMessagesId" IS 'Identity';

COMMENT ON COLUMN "SysLocaleMessages"."LanguageId" IS 'Language Identity';

COMMENT ON COLUMN "SysLocaleMessages"."MessageName" IS 'Tên';

COMMENT ON COLUMN "SysLocaleMessages"."MessageValue" IS 'Giá trị';

COMMENT ON COLUMN "SysLocaleMessages"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysLocaleMessages"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysLocaleMessages"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysLocaleMessages"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysLocaleMessagesPk" ON "SysLocaleMessages"
("LocaleMessagesId")
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

CREATE OR REPLACE TRIGGER "TriggerSysLocaleMessages" BEFORE
INSERT
ON "SysLocaleMessages" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysLocaleMessages".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."LocaleMessagesId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysLocaleMessages";
/


ALTER TABLE "SysLocaleMessages" ADD (
  CONSTRAINT "SysLocaleMessagesPk"
  PRIMARY KEY
  ("LocaleMessagesId")
  USING INDEX "SysLocaleMessagesPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysLocaleMessages"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;

 --SysLocaleStringResources--
CREATE TABLE "SysLocaleStringResources"
(
  "LocaleStringResourceId"               NUMBER(19),
  "LanguageId"       NUMBER(19)                   NOT NULL,
  "ResourceName"     VARCHAR2(200 BYTE)           NOT NULL,
  "ResourceValue"    VARCHAR2(500 BYTE)           NOT NULL,
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

COMMENT ON COLUMN "SysLocaleStringResources"."LocaleStringResourceId" IS 'Identity';

COMMENT ON COLUMN "SysLocaleStringResources"."LanguageId" IS 'Language Identity';

COMMENT ON COLUMN "SysLocaleStringResources"."ResourceName" IS 'Tên';

COMMENT ON COLUMN "SysLocaleStringResources"."ResourceValue" IS 'Giá trị';

COMMENT ON COLUMN "SysLocaleStringResources"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysLocaleStringResources"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysLocaleStringResources"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysLocaleStringResources"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysLocaleStringResourcesPk" ON "SysLocaleStringResources"
("LocaleStringResourceId")
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

CREATE OR REPLACE TRIGGER "TriggerSysStringResources" BEFORE
INSERT
ON "SysLocaleStringResources" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysLocaleStringResources".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."LocaleStringResourceId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysStringResources";
/


ALTER TABLE "SysLocaleStringResources" ADD (
  CONSTRAINT "SysLocaleStringResourcesPk"
  PRIMARY KEY
  ("LocaleStringResourceId")
  USING INDEX "SysLocaleStringResourcesPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysLocaleStringResources"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;
  
  
   --SysMappingUserMenu--
CREATE TABLE "SysMappingUserMenu"
(
  "MappingUserMenuId"               NUMBER(19)                   NOT NULL,
  "UserId"           NUMBER(19),
  "MenuId"           NUMBER(19),
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
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "SysMappingUserMenu"."MappingUserMenuId" IS 'Identity';

COMMENT ON COLUMN "SysMappingUserMenu"."UserId" IS 'Thông tin người dùng';

COMMENT ON COLUMN "SysMappingUserMenu"."MenuId" IS 'Thông tin chức nang';

COMMENT ON COLUMN "SysMappingUserMenu"."Index" IS 'Vị trí';

COMMENT ON COLUMN "SysMappingUserMenu"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysMappingUserMenu"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysMappingUserMenu"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysMappingUserMenu"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysMappingUserMenuPk" ON "SysMappingUserMenu"
("MappingUserMenuId")
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

CREATE OR REPLACE TRIGGER "TriggerSysMapUserMenu" BEFORE
INSERT
ON "SysMappingUserMenu" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysMappingUserMenu".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."MappingUserMenuId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysMapUserMenu";
/


ALTER TABLE "SysMappingUserMenu" ADD (
  CONSTRAINT "SysMappingUserMenuPk"
  PRIMARY KEY
  ("MappingUserMenuId")
  USING INDEX "SysMappingUserMenuPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysMappingUserMenu"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


 --SysMenus--
CREATE TABLE "SysMenus"
(
  "MenuId"               NUMBER(19)                   NOT NULL,
  "Content"          NVARCHAR2(256)               NOT NULL,
  "IconClass"        NVARCHAR2(100),
  "Url"             NVARCHAR2(300)               NOT NULL,
  "Order"           NUMBER(19)                   NOT NULL,
  "PermissionName"   NVARCHAR2(500),
  "ParentId"         NUMBER(19),
  "IsDisplay"        NUMBER(1)                    NOT NULL,
  "IsActive"         NUMBER(1)                    NOT NULL,
  "SystemName"       VARCHAR2(50 BYTE),
  "AppId"            NUMBER(19),
  "IsDefault"        NUMBER(1)                    DEFAULT 0,
  "Color1"           VARCHAR2(8 BYTE),
  "Color2"           VARCHAR2(8 BYTE),
  "Icon1"            NVARCHAR2(256),
  "Code"             NVARCHAR2(16),
  "Icon2"            NVARCHAR2(256),
  "Color3"           VARCHAR2(8 BYTE),
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

COMMENT ON COLUMN "SysMenus"."MenuId" IS 'Identity';

COMMENT ON COLUMN "SysMenus"."Content" IS 'Nội dung';

COMMENT ON COLUMN "SysMenus"."IconClass" IS 'Icon';

COMMENT ON COLUMN "SysMenus"."Url" IS 'Ðường dẫn';

COMMENT ON COLUMN "SysMenus"."Order" IS 'Thứ tự';

COMMENT ON COLUMN "SysMenus"."PermissionName" IS 'Tên quyền';

COMMENT ON COLUMN "SysMenus"."ParentId" IS 'ID cha';

COMMENT ON COLUMN "SysMenus"."IsDisplay" IS 'Hiển thị';

COMMENT ON COLUMN "SysMenus"."IsActive" IS 'Có còn được sử dụng hay không';

COMMENT ON COLUMN "SysMenus"."SystemName" IS 'Tên hệ thống';

COMMENT ON COLUMN "SysMenus"."AppId" IS 'ID App';

COMMENT ON COLUMN "SysMenus"."IsDefault" IS 'Là mặc định';

COMMENT ON COLUMN "SysMenus"."Color1" IS 'Màu 1';

COMMENT ON COLUMN "SysMenus"."Color2" IS 'Màu 2';

COMMENT ON COLUMN "SysMenus"."Icon1" IS 'Biểu tượng 1';

COMMENT ON COLUMN "SysMenus"."Code" IS 'Mã chứcc năng';

COMMENT ON COLUMN "SysMenus"."Icon2" IS 'Biểu tượng 2';

COMMENT ON COLUMN "SysMenus"."Color3" IS 'Màu 3';

COMMENT ON COLUMN "SysMenus"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysMenus"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysMenus"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysMenus"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysMenusPk" ON "SysMenus"
("MenuId")
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

CREATE OR REPLACE TRIGGER "TriggerSysMenus" BEFORE
INSERT
ON "SysMenus" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysMenus".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."MenuId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysMenus";
/


ALTER TABLE "SysMenus" ADD (
  CONSTRAINT "SysMenusPk"
  PRIMARY KEY
  ("MenuId")
  USING INDEX "SysMenusPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysMenus"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


 --SysPermissions--
CREATE TABLE "SysPermissions"
(
  "PermissionId"               NUMBER(19)                   NOT NULL,
  "PermissionName"            NVARCHAR2(256),
  "Description"      NVARCHAR2(256),
  "Type"             NUMBER(10),
  "Application"      VARCHAR2(50 BYTE),
  "ParentId"         NUMBER(19),
  "IsPermisstion"     NUMBER(1),
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

COMMENT ON COLUMN "SysPermissions"."PermissionId" IS 'Identity';

COMMENT ON COLUMN "SysPermissions"."PermissionName" IS 'Tên';

COMMENT ON COLUMN "SysPermissions"."Description" IS 'Mô tả';

COMMENT ON COLUMN "SysPermissions"."Type" IS 'Loại phân quyền';

COMMENT ON COLUMN "SysPermissions"."Application" IS 'Ứng dụng';

COMMENT ON COLUMN "SysPermissions"."ParentId" IS 'Identity cha';

COMMENT ON COLUMN "SysPermissions"."IsPermisstion" IS 'Có phân quyền hay không';

COMMENT ON COLUMN "SysPermissions"."IsActive" IS 'Có còn sử dụng hay không';

COMMENT ON COLUMN "SysPermissions"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysPermissions"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysPermissions"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysPermissions"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysPermissionsPk" ON "SysPermissions"
("PermissionId")
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

CREATE OR REPLACE TRIGGER "TriggerSysPermissions" BEFORE
INSERT
ON "SysPermissions" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysPermissions".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."PermissionId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysPermissions";
/


ALTER TABLE "SysPermissions" ADD (
  CONSTRAINT "SysPermissionsPk"
  PRIMARY KEY
  ("PermissionId")
  USING INDEX "SysPermissionsPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysPermissions"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


 --SysRolePermission--
CREATE TABLE "SysRolePermission"
(
  "RoleId"           NUMBER(19)                   NOT NULL,
  "PermissionId"     NUMBER(19)                   NOT NULL,
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

COMMENT ON COLUMN "SysRolePermission"."RoleId" IS 'Identity';

COMMENT ON COLUMN "SysRolePermission"."PermissionId" IS 'Identity phân quyền';

COMMENT ON COLUMN "SysRolePermission"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysRolePermission"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysRolePermission"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysRolePermission"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysRolePermissionPk" ON "SysRolePermission"
("RoleId", "PermissionId")
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

ALTER TABLE "SysRolePermission" ADD (
  CONSTRAINT "SysRolePermissionPk"
  PRIMARY KEY
  ("RoleId", "PermissionId")
  USING INDEX "SysRolePermissionPk"
  ENABLE VALIDATE);


 --SysRoles--
CREATE TABLE "SysRoles"
(
  "RoleId"                NUMBER(19)                  NOT NULL,
  "ConCurrencyStamp"  NVARCHAR2(500),
  "Name"         NVARCHAR2(256)              NOT NULL,
  "NormalizedName"    NVARCHAR2(256),
  "Code"              VARCHAR2(255 BYTE)          NOT NULL,
  "IsSystem"          NUMBER(1)                   NOT NULL,
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

COMMENT ON COLUMN "SysRoles"."RoleId" IS 'Identity';

COMMENT ON COLUMN "SysRoles"."ConCurrencyStamp" IS '"ConCurrencyStamp"';

COMMENT ON COLUMN "SysRoles"."Name" IS 'Tên';

COMMENT ON COLUMN "SysRoles"."NormalizedName" IS 'Tên (vi?t hoa)';

COMMENT ON COLUMN "SysRoles"."Code" IS 'Mã';

COMMENT ON COLUMN "SysRoles"."IsSystem" IS 'System';

COMMENT ON COLUMN "SysRoles"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysRoles"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysRoles"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysRoles"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysRolesPk" ON "SysRoles"
("RoleId")
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

CREATE OR REPLACE TRIGGER "TriggerSysRoles" BEFORE
INSERT
ON "SysRoles" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysRoles".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."RoleId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysRoles";
/


ALTER TABLE "SysRoles" ADD (
  CONSTRAINT "SysRolesPk"
  PRIMARY KEY
  ("RoleId")
  USING INDEX "SysRolesPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysRoles"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


 --SysSettings--
CREATE TABLE "SysSettings"
(
  "SettingId"                NUMBER(19)                  NOT NULL,
  "GroupSetting"        NVARCHAR2(50),
  "SettingCode"         NVARCHAR2(50),
  "SettingName"         NVARCHAR2(100),
  "SettingValue"        NVARCHAR2(100),
  "SettingDesciption"  NVARCHAR2(200),
  "IsActive"            NUMBER(1)                 NOT NULL,
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

COMMENT ON COLUMN "SysSettings"."SettingId" IS 'Identity';

COMMENT ON COLUMN "SysSettings"."GroupSetting" IS 'Nhóm cấu hình';

COMMENT ON COLUMN "SysSettings"."SettingCode" IS 'Mã cài đặt';

COMMENT ON COLUMN "SysSettings"."SettingName" IS 'Tên cài đặt';

COMMENT ON COLUMN "SysSettings"."SettingValue" IS 'Giá trị cài đặt';

COMMENT ON COLUMN "SysSettings"."SettingDesciption" IS 'Mô tả cài đặt';

COMMENT ON COLUMN "SysSettings"."IsActive" IS 'Có còn được sử dụng hay không';

COMMENT ON COLUMN "SysSettings"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysSettings"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysSettings"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysSettings"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysSettingsPk" ON "SysSettings"
("SettingId")
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

CREATE OR REPLACE TRIGGER "TriggerSysSettings" BEFORE
INSERT
ON "SysSettings" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysSettings".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."SettingId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysSettings";
/


ALTER TABLE "SysSettings" ADD (
  CONSTRAINT "SysSettingsPk"
  PRIMARY KEY
  ("SettingId")
  USING INDEX "SysSettingsPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysSettings"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


 --SysUserLoginHistories--
CREATE TABLE "SysUserLoginHistories"
(
  "UserLoginHistoryId"                NUMBER(19)                  NOT NULL,
  "UserName"         NVARCHAR2(50),
  "FullName"         NVARCHAR2(50),
  "LoginDate"        DATE,
  "Browser"          NVARCHAR2(256),
  "Device"           NVARCHAR2(50),
  "IpAddress"        NVARCHAR2(50),
  "Status"           NUMBER(1),
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

COMMENT ON COLUMN "SysUserLoginHistories"."UserLoginHistoryId" IS 'Identity';

COMMENT ON COLUMN "SysUserLoginHistories"."UserName" IS 'Tên ngu?i dang nh?p';

COMMENT ON COLUMN "SysUserLoginHistories"."FullName" IS 'Ho? va` tên';

COMMENT ON COLUMN "SysUserLoginHistories"."LoginDate" IS 'Nga`y dang nhâ?p';

COMMENT ON COLUMN "SysUserLoginHistories"."Browser" IS 'Ðang nhâ?p trên tri`nh duyê?t';

COMMENT ON COLUMN "SysUserLoginHistories"."Device" IS 'Ðang nhâ?p trên thiê´t bi?';

COMMENT ON COLUMN "SysUserLoginHistories"."IpAddress" IS 'Ði?a chi? dang nhâ?p';

COMMENT ON COLUMN "SysUserLoginHistories"."Status" IS 'Tr?ng thái xác th?c (thành công/th?t b?i)';

COMMENT ON COLUMN "SysUserLoginHistories"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysUserLoginHistories"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysUserLoginHistories"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysUserLoginHistories"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysUserLoginHistoriesPk" ON "SysUserLoginHistories"
("UserLoginHistoryId")
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

CREATE OR REPLACE TRIGGER "TriggerSysUserLoginHistories" BEFORE
INSERT
ON "SysUserLoginHistories" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysUserLoginHistories".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."UserLoginHistoryId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysUserLoginHistories";
/


ALTER TABLE "SysUserLoginHistories" ADD (
  CONSTRAINT "SysUserLoginHistoriesPk"
  PRIMARY KEY
  ("UserLoginHistoryId")
  USING INDEX "SysUserLoginHistoriesPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysUserLoginHistories"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


 --SysUserPermission--
CREATE TABLE "SysUserPermission"
(
  "UserId"           NUMBER(19)            NOT NULL,
  "PermissionId"     NUMBER(19)                   NOT NULL,
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

COMMENT ON COLUMN "SysUserPermission"."UserId" IS 'Identity';

COMMENT ON COLUMN "SysUserPermission"."PermissionId" IS 'Identity';

COMMENT ON COLUMN "SysUserPermission"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysUserPermission"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysUserPermission"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysUserPermission"."LastUpdatedBy" IS 'Người cập nhật sau cùng';

--SysUserRole--
CREATE TABLE "SysUserRole"
(
  "UserId"           NUMBER(19)            NOT NULL,
  "RoleId"     NUMBER(19)                   NOT NULL,
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

COMMENT ON COLUMN "SysUserRole"."UserId" IS 'Identity';

COMMENT ON COLUMN "SysUserRole"."RoleId" IS 'Identity vai trò';

COMMENT ON COLUMN "SysUserRole"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysUserRole"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysUserRole"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysUserRole"."LastUpdatedBy" IS 'Người cập nhật sau cùng';

CREATE UNIQUE INDEX "SysUserRolePk" ON "SysUserRole"
("UserId")
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

ALTER TABLE "SysUserRole" ADD (
  CONSTRAINT "SysUserRolePk"
  PRIMARY KEY
  ("UserId")
  USING INDEX "SysUserRolePk"
  ENABLE VALIDATE);

 --SysVersions--
CREATE TABLE "SysVersions"
(
  "VersionId"           VARCHAR2(64 BYTE)            NOT NULL,
  "ApplicationCode"  NVARCHAR2(50)                NOT NULL,
  "ApplicationName"  NVARCHAR2(100)               NOT NULL,
  "Version"          NVARCHAR2(20)                NOT NULL,
  "ForceUpdate"      NUMBER(1)                    DEFAULT 0                     NOT NULL,
  "Os"             VARCHAR2(20 BYTE)            NOT NULL,
  "Env"              VARCHAR2(50 BYTE),
  "AppsStoreUrl"      VARCHAR2(500 BYTE),
  "IsActive"         NUMBER(1)                    NOT NULL,
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

COMMENT ON COLUMN "SysVersions"."VersionId" IS 'Identity';

COMMENT ON COLUMN "SysVersions"."ApplicationCode" IS 'Mã ứng dụng';

COMMENT ON COLUMN "SysVersions"."ApplicationName" IS 'Tên ứng dụng';

COMMENT ON COLUMN "SysVersions"."Version" IS 'Phiên bản';

COMMENT ON COLUMN "SysVersions"."ForceUpdate" IS 'Có bắt buộc cập nhật không';

COMMENT ON COLUMN "SysVersions"."Os" IS 'Os';

COMMENT ON COLUMN "SysVersions"."Env" IS 'Môi trường';

COMMENT ON COLUMN "SysVersions"."AppsStoreUrl" IS 'Url';

COMMENT ON COLUMN "SysVersions"."IsActive" IS 'Có còn du?c s? d?ng hay không';

COMMENT ON COLUMN "SysVersions"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysVersions"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysVersions"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysVersions"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysVersionsPk" ON "SysVersions"
("VersionId")
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

CREATE OR REPLACE TRIGGER "TriggerSysVersions" BEFORE
INSERT
ON "SysVersions" FOR EACH ROW
DECLARE tmpVar NUMBER
;

BEGIN
    tmpVar := 0;
    SELECT
           "SeqSysVersions".NEXTVAL
    INTO
           tmpVar
    FROM
           dual
    ;

    :NEW."VersionId" := tmpVar;
EXCEPTION
WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END "TriggerSysVersions";
/


ALTER TABLE "SysVersions" ADD (
  CONSTRAINT "SysVersionsPk"
  PRIMARY KEY
  ("VersionId")
  USING INDEX "SysVersionsPk"
  ENABLE VALIDATE);

CREATE SEQUENCE "SeqSysVersions"
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  CACHE 20
  NOORDER;


CREATE TABLE "IntegrationEvents" 
   (	"EventId" VARCHAR2(36), 
	"Content" NCLOB, 
	"State" NUMBER(*,0) DEFAULT 0, 
	"SentTime" NUMBER(38,0) DEFAULT 0, 
	"EventTypeName" VARCHAR2(100), 
	"TransactionId" VARCHAR2(36), 
	"CreatedDate" TIMESTAMP (6) WITH TIME ZONE DEFAULT LOCALTIMESTAMP
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Content") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;\
  
  
     --SysApplication--
CREATE TABLE "SysApplication"
(
  "SysApplicationId"               VARCHAR2(50 BYTE)  NOT NULL,
  "SysApplicationName"           VARCHAR2(50 BYTE),
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
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON COLUMN "SysApplication"."SysApplicationId" IS 'GUID';

COMMENT ON COLUMN "SysApplication"."SysApplicationName" IS 'Tên ứng dụng';

COMMENT ON COLUMN "SysApplication"."Index" IS 'Vị trí';

COMMENT ON COLUMN "SysApplication"."CreationDate" IS 'Ngày tạo';

COMMENT ON COLUMN "SysApplication"."CreatedBy" IS 'Người tạo';

COMMENT ON COLUMN "SysApplication"."LastUpdatedDate" IS 'Ngày cập nhật sau cùng';

COMMENT ON COLUMN "SysApplication"."LastUpdatedBy" IS 'Người cập nhật sau cùng';


CREATE UNIQUE INDEX "SysApplicationPk" ON "SysApplication"
("SysApplicationId")
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

ALTER TABLE "SysApplication" ADD (
  CONSTRAINT "SysApplicationPk"
  PRIMARY KEY
  ("SysApplicationId")
  USING INDEX "SysApplicationPk"
  ENABLE VALIDATE);

