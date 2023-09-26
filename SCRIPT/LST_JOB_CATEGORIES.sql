SET DEFINE OFF;
Insert into "JobCategories"
   ("JobCategoryId", "JobCategoryCode", "JobCategoryName", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'VP1', 'Văn phòng', 1, NULL, 
    NULL, TO_DATE('5/21/2021 5:40:31 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "JobCategories"
   ("JobCategoryId", "JobCategoryCode", "JobCategoryName", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'NM1', 'Lao động phổ thông', 1, NULL, 
    NULL, TO_DATE('5/21/2021 5:40:31 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "JobCategories"
   ("JobCategoryId", "JobCategoryCode", "JobCategoryName", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, 'CNVC1', 'Công nhân viên chức', 1, NULL, 
    NULL, NULL, NULL);
Insert into "JobCategories"
   ("JobCategoryId", "JobCategoryCode", "JobCategoryName", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (4, 'GV', 'Giáo Viên', 1, NULL, 
    NULL, NULL, NULL);
COMMIT;
