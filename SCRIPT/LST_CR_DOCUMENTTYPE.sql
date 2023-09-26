SET DEFINE OFF;
Insert into "CusRequestDocType"
   ("CusRequestDocTypeId", "RequestType", "DocTypeName",  
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "IsRequired")
 Values
   (1, 1, '- Bản sao CMND/ Bản sao CCCD/ Bản sao Hộ chiếu/ Bản sao CMND quân đội/ Bản sao GKS', 1, NULL, 
    NULL, NULL, NULL, 1);
Insert into "CusRequestDocType"
   ("CusRequestDocTypeId", "RequestType", "DocTypeName",  
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "IsRequired")
 Values
   (2, 4, '- Bản sao CMND/ Bản sao Hộ chiếu/ Bản sao GKS/ Bản sao CMND quân đội', 1, NULL, 
    NULL, NULL, NULL, 1);
Insert into "CusRequestDocType"
   ("CusRequestDocTypeId", "RequestType", "DocTypeName",  
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "IsRequired")
 Values
   (3, 4, '- Giấy xác nhận chi tiết nhân thân của Cơ quan có thẩm quyền', 1, NULL, 
    NULL, NULL, NULL, 0);
Insert into "CusRequestDocType"
   ("CusRequestDocTypeId", "RequestType", "DocTypeName",  
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "IsRequired")
 Values
   (4, 4, '- Các chứng từ khác', 1, NULL, 
    NULL, NULL, NULL, 0);
Insert into "CusRequestDocType"
   ("CusRequestDocTypeId", "RequestType", "DocTypeName",  
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "IsRequired")
 Values
   (5, 4, '- Sổ Hộ khẩu/ Bằng lái xe/ Bằng cấp', 1, NULL, 
    NULL, NULL, NULL, 0);
COMMIT;
