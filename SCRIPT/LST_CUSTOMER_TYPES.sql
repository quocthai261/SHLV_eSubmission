SET DEFINE OFF;
Insert into "CustomerType"
   ("CustomerTypeId", "CustomerTypeCode", "CustomerTypeName", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, '001', 'Khách hàng hiện hữu', 1, NULL, 
    NULL, NULL, NULL);
Insert into "CustomerType"
   ("CustomerTypeId", "CustomerTypeCode", "CustomerTypeName", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, '002', 'Khách hàng tiềm năng', 1, NULL, 
    NULL, NULL, NULL);
COMMIT;
