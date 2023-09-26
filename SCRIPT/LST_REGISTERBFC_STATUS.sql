SET DEFINE OFF;
Insert into "RegisterBfcStatus"
   ("RegisterBfcStatusId", "RegisterBfcStatusCode", "RegisterBfcStatusName",  
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PositionId")
 Values
   (1, 'RQ001', 'Hồ sơ đã tạo', 1, TO_DATE('7/27/2021 9:07:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, TO_DATE('5/24/2021 9:44:01 AM', 'MM/DD/YYYY HH:MI:SS AM'), -1, NULL);
Insert into "RegisterBfcStatus"
   ("RegisterBfcStatusId", "RegisterBfcStatusCode", "RegisterBfcStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PositionId")
 Values
   (2, 'RQ002', 'Hồ sơ đang chờ trưởng ban xét duyệt', 1, TO_DATE('7/27/2021 9:07:24 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, TO_DATE('5/24/2021 9:44:01 AM', 'MM/DD/YYYY HH:MI:SS AM'), -1, 3);
Insert into "RegisterBfcStatus"
   ("RegisterBfcStatusId", "RegisterBfcStatusCode", "RegisterBfcStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PositionId")
 Values
   (3, 'RQ003', 'Hồ sơ đang chờ Trưởng khu vực xét duyệt', 1, TO_DATE('7/27/2021 9:10:17 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL, 5);
Insert into "RegisterBfcStatus"
   ("RegisterBfcStatusId", "RegisterBfcStatusCode", "RegisterBfcStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PositionId")
 Values
   (4, 'RQ004', 'Hồ sơ đang chờ GĐKV xét duyệt', 1, TO_DATE('7/27/2021 9:12:23 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL, 6);
Insert into "RegisterBfcStatus"
   ("RegisterBfcStatusId", "RegisterBfcStatusCode", "RegisterBfcStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PositionId")
 Values
   (5, 'RQ005', 'Hồ sơ đang chờ GĐ Vùng xét duyệt bởi DM', 1, TO_DATE('7/27/2021 9:12:26 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL, 7);
Insert into "RegisterBfcStatus"
   ("RegisterBfcStatusId", "RegisterBfcStatusCode", "RegisterBfcStatusName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PositionId")
 Values
   (7, 'RQ007', 'Hồ sơ đã đang chờ GĐ Vùng xét duyệt bởi SDM', 1, TO_DATE('7/27/2021 9:17:39 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, NULL, NULL, 8);
COMMIT;
