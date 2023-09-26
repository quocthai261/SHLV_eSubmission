SET DEFINE OFF;
Insert into "PositionApplings"
   ("PositionApplingsId", "PositionApplingCode", "PositionApplingName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "Image" )
 Values
   (21, '360', 'Quản lý', 0, NULL, 
    NULL, NULL, NULL, NULL);
Insert into "PositionApplings"
   ("PositionApplingsId", "PositionApplingCode", "PositionApplingName", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "Image" )
 Values
   (1, '251', 'Nhân viên', 1, TO_DATE('5/19/2021 8:05:39 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    23, TO_DATE('5/23/2021 10:24:23 AM', 'MM/DD/YYYY HH:MI:SS AM'), 1, NULL);
COMMIT;
