SET DEFINE OFF;
Insert into "Nationalities"
   ("NationalityId", "NationalityCode", "NationalityName", 
     "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'VN', 'Việt Nam', 1, NULL, 
    NULL, TO_DATE('5/23/2021 10:25:01 AM', 'MM/DD/YYYY HH:MI:SS AM'), 1);
Insert into "Nationalities"
   ("NationalityId", "NationalityCode", "NationalityName", 
     "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'LA', 'American', 0, NULL, 
    NULL, TO_DATE('5/23/2021 10:25:04 AM', 'MM/DD/YYYY HH:MI:SS AM'), 1);
COMMIT;
