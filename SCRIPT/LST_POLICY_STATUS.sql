SET DEFINE OFF;
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (85, '085', 'Đến hạn đóng phí', 0, NULL, 
    NULL, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (86, 'CNL02', 'Hồ sơ tạm hoãn bảo hiểm', 1, NULL, 
    NULL, TO_DATE('5/21/2021 5:39:33 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (9, '009', 'Đã hủy', 1, TO_DATE('8/11/2021', 'MM/DD/YYYY'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (4, '004', 'Đã phát hành', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (5, '005', 'Đã phát hành và đã hủy', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (6, '006', 'Còn hiệu lực', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (7, '007', 'Trễ hạn', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (8, '008', 'Mất hiệu lực', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, '001', 'Chờ xử lý', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, '002', 'Chờ bổ sung', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
Insert into "PolicyStatus"
   ("PolicyStatusId", "PolicyStatusCode" , "PolicyStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, '003', 'Từ chối', 1, TO_DATE('5/27/2021 4:17:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL);
COMMIT;
