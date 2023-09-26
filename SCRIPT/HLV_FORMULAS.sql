SET DEFINE OFF;
Insert into "Formulas"
   ("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (6, '&&', 'AND', 'Và', 2, 
    1, TO_DATE('11/22/2021', 'MM/DD/YYYY'), '1', TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1');
Insert into "Formulas"
("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (7, '||', 'OR', 'Hoặc', 2, 
    1, TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1', NULL, NULL);
Insert into "Formulas"
("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (4, '<=', '<=', 'Nhỏ hơn hoặc bằng', 1, 
    1, TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1', TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1');
Insert into "Formulas"
("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (5, '=', '=', 'Bằng', 1, 
    1, TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1', TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1');
Insert into "Formulas"
("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, '>', '>', 'Lớn hơn', 1, 
    1, TO_DATE('11/22/2021', 'MM/DD/YYYY'), '1', TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1');
Insert into "Formulas"
   ("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, '>=', '>=', 'Lớn hơn hoặc bằng', 1, 
    1, TO_DATE('11/22/2021', 'MM/DD/YYYY'), '1', TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1');
Insert into "Formulas"
   ("FormulaId", "ValueOne", "ValueTwo" , "Description", "Type", 
    "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, '<', '<', 'Nhỏ hơn', 1, 
    1, TO_DATE('11/27/2021', 'MM/DD/YYYY'), '1', NULL, NULL);
COMMIT;
