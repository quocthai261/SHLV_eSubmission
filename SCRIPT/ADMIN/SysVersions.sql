SET DEFINE OFF;
Insert into "SysVersions"
   ("VersionId", "ApplicationCode", "ApplicationName", "Version", "ForceUpdate", 
    "Os", "Env", "AppsStoreUrl", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'mSFA', 'SFA - Mobile', '0.1.3', 1, 
    'Android', 'uat', 'https://install.appcenter.ms/orgs/fis.mobile/apps/lime-pro-uat-android/distribution_groups/public', 1, TO_DATE('9/30/2021 9:10:10 AM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', TO_DATE('11/16/2021 4:18:21 PM', 'MM/DD/YYYY HH:MI:SS AM'), '1');
Insert into "SysVersions"
   ("VersionId", "ApplicationCode", "ApplicationName", "Version", "ForceUpdate", 
    "Os", "Env", "AppsStoreUrl", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'mSFA', 'SFA - Mobile', '0.1.3', 1, 
    'iOS', 'uat', 'https://install.appcenter.ms/orgs/fis.mobile/apps/lime-pro-uat-ios/distribution_groups/public', 1, TO_DATE('9/30/2021 9:10:10 AM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', NULL, NULL);
Insert into "SysVersions"
   ("VersionId", "ApplicationCode", "ApplicationName", "Version", "ForceUpdate", 
    "Os", "Env", "AppsStoreUrl", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, 'mSFA', 'SFA - Mobile', '0.1.3', 1, 
    'Android', 'Prod', 'https://install.appcenter.ms/orgs/fis.mobile/apps/lime-pro-uat-android/distribution_groups/public', 1, TO_DATE('9/30/2021 9:10:10 AM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', NULL, NULL);
Insert into "SysVersions"
   ("VersionId", "ApplicationCode", "ApplicationName", "Version", "ForceUpdate", 
    "Os", "Env", "AppsStoreUrl", "IsActive", "CreationDate", 
    "CreatedBy", "LastUpdatedDate", "LastUpdatedBy")
 Values
   (4, 'mSFA', 'SFA - Mobile', '0.1.3', 1, 
    'iOS', 'Prod', 'https://install.appcenter.ms/orgs/fis.mobile/apps/lime-pro-uat-ios/distribution_groups/public', 1, TO_DATE('9/30/2021 9:10:10 AM', 'MM/DD/YYYY HH:MI:SS AM'), 
    '1', NULL, NULL);
COMMIT;
