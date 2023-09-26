SET DEFINE OFF;
Insert into "Gender"
   ("GenderId", "GenderCode", "GenderDescription", "GenderDescriptionVN", "IsActive", 
    "CreationDate" , "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'M', 'Male', 'Nam', 1, 
    TO_DATE('5/19/2021 6:57:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 23, TO_DATE('9/14/2021 4:23:39 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "Gender"
   ("GenderId", "GenderCode", "GenderDescription", "GenderDescriptionVN", "IsActive", 
    "CreationDate" , "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'F', 'Female', 'Nữ', 1, 
    TO_DATE('5/19/2021 6:58:17 PM', 'MM/DD/YYYY HH:MI:SS AM'), 23, TO_DATE('5/27/2021 2:08:08 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
COMMIT;
