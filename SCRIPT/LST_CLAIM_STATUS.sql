SET DEFINE OFF;
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'Admit', 'Chấp nhận bồi thường', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'Repudiate', 'Repudiate', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, 'Cancel', 'Cancel', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (4, 'Ex-Gratia-Full', 'Ex-gratia-Full', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (5, 'Ex-Gratia-Partial', 'Chi trả khác', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (6, 'Withdrawn', 'Tạm đóng hồ sơ', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (7, 'Decline', 'Từ chối bồi thường', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('10/12/2020 10:02:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (8, 'Approval in Progress', 'Approval in Progress', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (10, 'Settled', 'Settled', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (12, 'Cancelled', 'Cancelled', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (13, 'Rejected at Approval', 'Rejected at Approval', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (14, 'Evaluated and waiting for Escalation', 'Evaluated and waiting for Escalation', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (15, 'Escalated and Waiting for Reply', 'Escalated and Waiting for Reply', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (16, 'Escalation Reply in Progress', 'Escalation Reply in Progress', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (17, 'Withdrawn at Acceptance', 'Withdrawn at Acceptance', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
Insert into "ClaimStatus"
   ("ClaimStatusId", "ClaimStatusName", "ClaimStatusNameVN", "IsActive" , "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (18, 'Escalated and Waiting for Escalation', 'Escalated and Waiting for Escalation', 1, TO_DATE('10/10/2019 4:44:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, NULL, NULL);
COMMIT;
