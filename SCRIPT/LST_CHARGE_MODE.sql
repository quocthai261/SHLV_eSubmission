SET DEFINE OFF;
Insert into "ChargeMode"
   ("ChargeModeId", "ChargeModeName", "ChargeModeNameVN", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "ChargeType")
 Values
   (0, 'Not Relevant', 'Không phù hợp', 1, TO_DATE('10/10/2019 4:52:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/11/2019 4:54:15 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, '0');
Insert into "ChargeMode"
   ("ChargeModeId", "ChargeModeName", "ChargeModeNameVN", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "ChargeType")
 Values
   (1, 'Yearly', 'Năm', 1, TO_DATE('10/10/2019 4:52:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/11/2019 4:54:15 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, '1');
Insert into "ChargeMode"
   ("ChargeModeId", "ChargeModeName", "ChargeModeNameVN", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "ChargeType")
 Values
   (2, 'Half Yearly', 'Nửa năm', 1, TO_DATE('10/10/2019 4:52:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/11/2019 4:54:15 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, '2');
Insert into "ChargeMode"
   ("ChargeModeId", "ChargeModeName", "ChargeModeNameVN", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "ChargeType")
 Values
   (3, 'Quarterly', 'Quý', 1, TO_DATE('10/10/2019 4:52:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/11/2019 4:54:15 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, '3');
Insert into "ChargeMode"
   ("ChargeModeId", "ChargeModeName", "ChargeModeNameVN", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "ChargeType")
 Values
   (4, 'Monthly', 'Tháng', 1, TO_DATE('10/10/2019 4:52:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/11/2019 4:54:15 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, '4');
Insert into "ChargeMode"
   ("ChargeModeId", "ChargeModeName", "ChargeModeNameVN", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "ChargeType")
 Values
   (5, 'Single', 'Đơn kỳ', 1, TO_DATE('10/10/2019 4:52:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/11/2019 4:54:15 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, '5');
COMMIT;
