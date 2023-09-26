SET DEFINE OFF;
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay",
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType" )
 Values
   (21, NULL, 27, 29, TO_DATE('11/18/2021 4:32:47 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', TO_DATE('12/27/2021 3:52:43 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 2);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (1, 'FC', 15, 17, TO_DATE('11/8/2021 7:03:13 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('12/16/2021 10:29:34 AM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (3, 'DM', 15, 17, TO_DATE('11/8/2021 7:03:18 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('12/16/2021 10:29:34 AM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (2, 'UM', 15, 17, TO_DATE('11/8/2021 7:03:19 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('12/16/2021 10:29:34 AM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (23, 'SrUM', 15, 17, TO_DATE('11/19/2021 4:17:47 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', TO_DATE('12/16/2021 10:29:34 AM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (4, 'SDM', 15, 17, TO_DATE('11/10/2021 10:16:16 AM', 'MM/DD/YYYY HH:MI:SS AM'), 
    NULL, TO_DATE('12/16/2021 10:29:34 AM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (22, 'SrDM', 15, 17, TO_DATE('11/19/2021 3:35:40 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', TO_DATE('12/16/2021 10:29:34 AM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (24, 'SA', 15, 15, TO_DATE('12/16/2021 4:25:06 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', NULL, NULL, 1);
Insert into "SalePlanConfig"
   ("SalePlanConfigId", "PositionCode", "AllowCreateDay", "AllowEditDay", 
    "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "PlanType")
 Values
   (25, 'RM', 15, 15, TO_DATE('12/16/2021 4:25:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', NULL, NULL, 1);
COMMIT;
