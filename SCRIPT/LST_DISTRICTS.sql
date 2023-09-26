SET DEFINE OFF;
Insert into "Districts"
   ("DistrictId", "ProvinceId", "DistrictCode", "DistrictName", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "RegionId")
 Values
   (1, 63, '1', 'Thủ Đức', 1, 
    TO_DATE('6/17/2021', 'MM/DD/YYYY'), 1, NULL, NULL, 5);
Insert into "Districts"
   ("DistrictId", "ProvinceId", "DistrictCode", "DistrictName", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "RegionId")
 Values
   (2, 63, '2', 'Phú Nhuận', 1, 
    TO_DATE('6/17/2021', 'MM/DD/YYYY'), 1, NULL, NULL, 5);
Insert into "Districts"
   ("DistrictId", "ProvinceId", "DistrictCode", "DistrictName", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "RegionId")
 Values
   (61, 63, '4', 'Quận 1', 1, 
    TO_DATE('6/17/2021', 'MM/DD/YYYY'), 1, NULL, NULL, 5);
Insert into "Districts"
   ("DistrictId", "ProvinceId", "DistrictCode", "DistrictName", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "RegionId")
 Values
   (62, 1, '5', 'Hai Bà Trưng', 1, 
    TO_DATE('6/17/2021', 'MM/DD/YYYY'), 1, NULL, NULL, 1);
Insert into "Districts"
   ("DistrictId", "ProvinceId", "DistrictCode", "DistrictName", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "RegionId")
 Values
   (63, 1, '6', 'Hoàn Kiếm', 1, 
    TO_DATE('6/17/2021', 'MM/DD/YYYY'), 1, NULL, NULL, 1);
Insert into "Districts"
   ("DistrictId", "ProvinceId", "DistrictCode", "DistrictName", "IsActive", 
    "CreationDate", "CreatedBy", "LastUpdatedDate", "LastUpdatedBy", "RegionId")
 Values
   (3, 63, '3', 'Bình Thạnh', 1, 
    TO_DATE('6/17/2021', 'MM/DD/YYYY'), 1, NULL, NULL, 5);
COMMIT;
