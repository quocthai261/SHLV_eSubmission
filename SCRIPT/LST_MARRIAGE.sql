SET DEFINE OFF;
Insert into "Marriage"
   ("MarriageId", "MarriageName",  
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy" )
 Values
   (1, 'Độc thân', 1, NULL, NULL, 
    TO_DATE('5/21/2021 3:14:29 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1');
Insert into "Marriage"
   ("MarriageId", "MarriageName",  
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy" )
 Values
   (2, 'Đã kết hôn', 1, NULL, NULL, 
    TO_DATE('5/21/2021 3:14:29 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1');
Insert into "Marriage"
   ("MarriageId", "MarriageName",  
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy" )
 Values
   (3, 'Ly thân', 1, NULL, NULL, 
    NULL, NULL);
Insert into "Marriage"
   ("MarriageId", "MarriageName",  
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy" )
 Values
   (4, 'Ly hôn', 1, NULL, NULL, 
    TO_DATE('5/21/2021 5:40:10 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1');
Insert into "Marriage"
   ("MarriageId", "MarriageName",  
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy" )
 Values
   (5, 'Góa', 0, NULL, NULL, 
    TO_DATE('5/21/2021 5:40:06 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1');
Insert into "Marriage"
   ("MarriageId", "MarriageName",  
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy" )
 Values
   (6, 'Khác', 0, NULL, NULL, 
    TO_DATE('9/14/2021 5:18:24 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1');
COMMIT;
