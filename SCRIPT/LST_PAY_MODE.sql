SET DEFINE OFF;
Insert into "PayMode"
   ("PayModeId", "PayModeName", "PayModeType",
    "PayModeNameVN" , "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'Cash', '1',
    'Tiền mặt', 1, NULL, NULL, TO_DATE('5/23/2021 10:24:44 AM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "PayMode"
   ("PayModeId", "PayModeName", "PayModeType",
    "PayModeNameVN" , "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'Bank Transfer', '2',
    'Chuyển khoản', 1, NULL, NULL, TO_DATE('5/23/2021 10:24:46 AM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
COMMIT;
