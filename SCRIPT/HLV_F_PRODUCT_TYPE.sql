SET DEFINE OFF;
Insert into "FinancialProductType"
   ("FinProductTypeId", "ProductTypeCode", "Image", "ProductTypeName", "Description", 
    "UrlProduct", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy")
 Values
   (1, 'DDTM', 'FinalcialDemandAnalysis/ProductType/DTTM.png', 'Đầu tư thông minh', 'Đầu tư tài chính', 
    NULL, 1, TO_DATE('1/18/2022', 'MM/DD/YYYY'), NULL, TO_DATE('1/23/2022 11:49:49 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1');
Insert into "FinancialProductType"
   ("FinProductTypeId", "ProductTypeCode", "Image", "ProductTypeName", "Description", 
    "UrlProduct", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy")
 Values
   (2, 'HTTV', 'FinalcialDemandAnalysis/ProductType/HTTV.png', 'Hưu trí tuổi vàng', 'Bảo vệ thu nhập cho tuổi vàng', 
    NULL, 1, TO_DATE('1/18/2022', 'MM/DD/YYYY'), NULL, NULL, 
    NULL);
Insert into "FinancialProductType"
   ("FinProductTypeId", "ProductTypeCode", "Image", "ProductTypeName", "Description", 
    "UrlProduct", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy")
 Values
   (3, 'HVCC', 'FinalcialDemandAnalysis/ProductType/HVCC.png', 'Học vấn cho con', 'Quý Giáo dục cho con yêu', 
    NULL, 1, TO_DATE('1/18/2022', 'MM/DD/YYYY'), NULL, NULL, 
    NULL);
Insert into "FinancialProductType"
  ("FinProductTypeId", "ProductTypeCode", "Image", "ProductTypeName", "Description", 
    "UrlProduct", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy")
 Values
   (4, 'VVTC', 'FinalcialDemandAnalysis/ProductType/VVTC.png', 'Vững vàng tài chính trước các rủi ro tương lai', 'Bảo vệ thu nhập người trụ cột', 
    NULL, 1, TO_DATE('1/18/2022', 'MM/DD/YYYY'), NULL, NULL, 
    NULL);
COMMIT;
