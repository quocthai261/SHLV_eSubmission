SET DEFINE OFF;
Insert into "AgentMoveTypes"
   ("AgentMoveTypeId", "TypeCode", "TypeName", "Description", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'M1', 'Chuyển ban KD', 'Chuyển ban kinh doanh', 1, 
    TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, TO_DATE('8/23/2021 11:49:13 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "AgentMoveTypes"
   ("AgentMoveTypeId", "TypeCode", "TypeName", "Description", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'M2', 'Chuyển KVKD', 'Chuyển khu vực kinh doanh', 1, 
    TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, TO_DATE('8/23/2021 11:49:13 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "AgentMoveTypes"
   ("AgentMoveTypeId", "TypeCode", "TypeName", "Description", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, 'M3', 'Chuyển văn phòng KD', 'Chuyển văn phòng kinh doanh', 1, 
    TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, TO_DATE('8/23/2021 11:49:13 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
COMMIT;
