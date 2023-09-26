SET DEFINE OFF;
Insert into "SalaryPeriods"
   ("SalaryPeriodId", "SalaryPeriodCode", "SalaryPeriodType", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'SLC05221', 'Full', 1, TO_DATE('6/17/2021', 'MM/DD/YYYY'), 
    1, TO_DATE('5/24/2021 8:51:45 AM', 'MM/DD/YYYY HH:MI:SS AM'), -1);
Insert into "SalaryPeriods"
   ("SalaryPeriodId", "SalaryPeriodCode", "SalaryPeriodType", 
    "IsActive", "CreationDate","CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'SLC05241', 'Fresher', 1, TO_DATE('6/17/2021', 'MM/DD/YYYY'), 
    1, NULL, NULL);
COMMIT;
