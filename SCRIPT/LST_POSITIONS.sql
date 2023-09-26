SET DEFINE OFF;
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (1, 'FC', 'Tư vấn viên tài chính', 1, 1, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'RM', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (2, 'UM', 'Quản lý ban KD', 1, 1, 
    0, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'DM', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (3, 'DM', 'Quản lý KVKD', 1, 1, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'SrDM', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (4, 'GAD', 'GĐ tổng đại lý', 0, 1, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'SDM', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (5, 'SDM', 'GĐ KVKD', 0, 1, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'RSD', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (7, 'TSD', 'GĐ KD miền', 0, 1, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, NULL, NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (10, 'SrDM', 'Quản lý KVKD Cấp cao', 1, 1, 
    1, TO_DATE('11/19/2021 3:33:45 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, NULL, NULL, 
    NULL, NULL, 'GAD', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (11, 'SrUM', 'Quản lý ban KD Cấp cao', 1, 1, 
    1, TO_DATE('11/19/2021 4:16:11 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, NULL, NULL, 
    NULL, NULL, 'DM', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (6, 'RSD', 'GĐ KD vùng', 0, 1, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'TSD', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (12, 'HrDM', 'Honor DM', 1, 1, 
    1, TO_DATE('12/30/2021 1:51:35 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1', NULL, NULL, 
    NULL, NULL, NULL, NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (8, 'SA', 'Cộng tác viên', 0, 0, 
    1, TO_DATE('8/19/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'FC', NULL);
Insert into "Positions"
   ("PositionId", "PositionCode", "PositionName", "IsRegister", "IsApproval", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", 
    "Description", "Image", "NextPosition", "NextPositionDescription")
 Values
   (9, 'RM', 'Quản lý vùng KD', 0, 0, 
    1, TO_DATE('12/30/2021', 'MM/DD/YYYY'), NULL, NULL, NULL, 
    NULL, NULL, 'UM', NULL);
COMMIT;
