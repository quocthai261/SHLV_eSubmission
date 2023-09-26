SET DEFINE OFF;
Insert into "SysSettings"
   ("SettingId" , "GroupSetting", "SettingCode", "SettingName", "SettingValue", 
    "SettingDesciption", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy" )
 Values
   (1, 'PasswordPolicySettings', 'RequiredLength', 'Required Length', '8', 
    'The minimum length of the password.', 0, NULL, NULL, TO_DATE('1/15/2021 3:57:39 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    1);
Insert into "SysSettings"
   ("SettingId" , "GroupSetting", "SettingCode", "SettingName", "SettingValue", 
    "SettingDesciption", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy" )
 Values
   (2, 'PasswordPolicySettings', 'RequireUppercase', 'Require Uppercase', 'false', 
    'Requires an uppercase character in the password.', 0, NULL, NULL, NULL, 
    NULL);
Insert into "SysSettings"
   ("SettingId" , "GroupSetting", "SettingCode", "SettingName", "SettingValue", 
    "SettingDesciption", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy" )
 Values
   (3, 'PasswordPolicySettings', 'RequireLowercase', 'Require Lowercase', 'false', 
    'Requires a lowercase character in the password.', 0, NULL, NULL, NULL, 
    NULL);
Insert into "SysSettings"
   ("SettingId" , "GroupSetting", "SettingCode", "SettingName", "SettingValue", 
    "SettingDesciption", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy" )
 Values
   (4, 'PasswordPolicySettings', 'RequireDigit', 'Require Digit', 'false', 
    'Requires a number between 0-9 in the password.', 0, NULL, NULL, TO_DATE('5/31/2021 8:51:31 AM', 'MM/DD/YYYY HH:MI:SS AM'), 
    -1);
Insert into "SysSettings"
   ("SettingId" , "GroupSetting", "SettingCode", "SettingName", "SettingValue", 
    "SettingDesciption", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy" )
 Values
   (5, 'PasswordPolicySettings', 'RequireNonAlphanumeric', 'Require Non Alphanumeric', 'false', 
    'Requires a non-alphanumeric character in the password.', 0, NULL, NULL, NULL, 
    NULL);
Insert into "SysSettings"
   ("SettingId" , "GroupSetting", "SettingCode", "SettingName", "SettingValue", 
    "SettingDesciption", "IsActive", "CreationDate", "CreatedBy", "LastUpdatedDate", 
    "LastUpdatedBy" )
 Values
   (6, 'CalenderEventSettings', 'RequireTime', 'Require Time', '5', 
    'time reminding to join 5 minutes in advance', 1, TO_DATE('12/13/2021 5:48:29 PM', 'MM/DD/YYYY HH:MI:SS AM'), -1, TO_DATE('12/13/2021 5:49:32 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    -1);
COMMIT;
