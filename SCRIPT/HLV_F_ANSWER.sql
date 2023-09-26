SET DEFINE OFF;
Insert into "FinancialAnswers"
   ("FinAnswerId", "QuestionCode", "AnswerCode", "Index", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "AnswerType")
 Values
   (5, 'ADEMO', 'aaa', 1, 1, 
    TO_DATE('1/24/2022 6:32:08 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1', NULL, NULL, 1);
Insert into "FinancialAnswers"
   ("FinAnswerId", "QuestionCode", "AnswerCode", "Index", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "AnswerType")
 Values
   (1, 'HVCC-CHR-01', 'HVCC_AS02', 2, 1, 
    NULL, NULL, NULL, NULL, 2);
Insert into "FinancialAnswers"
   ("FinAnswerId", "QuestionCode", "AnswerCode", "Index", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "AnswerType")
 Values
   (2, 'HVCC-CHR-01', 'HTTV_AS02', 2, 1, 
    NULL, NULL, TO_DATE('1/24/2022 6:31:12 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 2);
Insert into "FinancialAnswers"
   ("FinAnswerId", "QuestionCode", "AnswerCode", "Index", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "AnswerType")
 Values
   (3, 'HVCC-CHR-05', 'HVCC_AS03', 3, 1, 
    NULL, NULL, NULL, NULL, 2);
Insert into "FinancialAnswers"
   ("FinAnswerId", "QuestionCode", "AnswerCode", "Index", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "AnswerType")
 Values
   (4, 'HVCC-CHR-06', 'HVCC_AS045', 4, 1, 
    NULL, NULL, TO_DATE('1/19/2022 6:35:22 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1', 2);
COMMIT;
