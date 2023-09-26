SET DEFINE OFF;
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (19, 'Permission.AllowView', 'Xem danh mục phân quyền quyền', NULL, NULL, 
    18, 1, 1, TO_DATE('5/13/2021 9:10:36 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('7/13/2021 7:31:18 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (22, 'Message', 'Quản lý thông báo', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/13/2021 9:22:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (27, 'SysApplication.AllowEdit', 'Cập nhật nhóm ứng dụng', NULL, NULL, 
    24, 1, 1, TO_DATE('5/14/2021 12:02:45 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (117, 'SearchUploadEarningPoint', 'Tra cứu/Đăng tải điểm người dùng', NULL, NULL, 
    NULL, NULL, 1, TO_DATE('5/14/2021 5:45:11 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (133, 'Notifications', 'Cấu hình thông báo', NULL, NULL, 
    NULL, 0, 1, TO_DATE('6/8/2021 3:27:06 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('6/8/2021 5:50:05 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (124, 'ApprovalAgentMovement', 'Duyệt chuyển đổi đại lý', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/14/2021 5:56:32 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/31/2021 2:58:54 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (130, 'ApprovalAgentTermination.AllowApprove', 'Duyệt yêu cầu chấm dứt', NULL, NULL, 
    128, 1, 1, TO_DATE('5/14/2021 5:59:42 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/31/2021 2:58:55 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (29, 'EmailTemplates', 'Thiết lập email template', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/16/2021 10:08:48 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (37, 'SMTPConfig.AllowEdit', 'Cập nhật cấu hình SMTP', NULL, NULL, 
    31, 1, 1, TO_DATE('5/18/2021 2:24:31 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (41, 'BankOrgs.AllowView', 'Xem DM ngân hàng', NULL, NULL, 
    40, 1, 1, TO_DATE('5/20/2021 12:32:01 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (42, 'Banks', 'DM chi nhánh Ngân hàng', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/20/2021 12:32:48 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/20/2021 12:33:44 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (49, 'Districts.AllowView', 'Xem DM ngân hàngXem DM ngân hàng', NULL, NULL, 
    48, 1, 1, TO_DATE('5/20/2021 12:38:58 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (51, 'Wards.AllowView', 'Xem DM Phường/ Thị trấn', NULL, NULL, 
    50, 1, 1, TO_DATE('5/20/2021 12:40:18 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (52, 'Positions', 'DM Vị trí', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/20/2021 12:41:00 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (53, 'Positions.AllowView', 'Xem DM Vị trí', NULL, NULL, 
    52, 1, 1, TO_DATE('5/20/2021 12:41:37 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (54, 'PositionApplings', 'DM Vị trí tuyển dụng', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/20/2021 12:42:19 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (55, 'PositionApplings.AllowView', 'Xem DM Vị trí tuyển dụng', NULL, NULL, 
    54, 1, 1, TO_DATE('5/20/2021 12:42:58 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (68, 'ChargeMode', 'DM định kỳ đóng phí', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/20/2021 5:39:46 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (71, 'Marriage.AllowEdit', 'Chỉnh sửa tình trạng hôn nhân', NULL, NULL, 
    73, 1, 1, TO_DATE('5/20/2021 5:41:54 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/20/2021 5:47:53 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (75, 'SalaryPeriods.AllowEdit', 'Chỉnh sửa kỳ (lương)', NULL, NULL, 
    76, 1, 1, TO_DATE('5/20/2021 5:43:58 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/20/2021 5:48:07 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (81, 'JobCategories.AllowEdit', 'Chỉnh sửa nhóm nghề', NULL, NULL, 
    82, 1, 1, TO_DATE('5/20/2021 5:47:16 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/20/2021 5:48:44 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (83, 'Nationalities', 'DM quốc tịch', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/20/2021 5:50:16 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (87, 'CustomerTypes', 'DM loại khách hàng', NULL, NULL, 
    NULL, 0, 1, TO_DATE('5/20/2021 5:51:41 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (92, 'ClaimType.AllowEdit', 'Chỉnh sửa quyền lợi bảo hiểm', NULL, NULL, 
    93, 1, 1, TO_DATE('5/20/2021 5:54:45 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('5/26/2021 8:44:37 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (134, 'Notifications.AllowView', 'Xem cấu hình thông báo', NULL, NULL, 
    133, 1, 1, TO_DATE('6/8/2021 3:27:06 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('6/8/2021 5:50:05 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (138, 'PotentialCustomer.AllowEdit', 'Chỉnh sửa thông tin khách hàng tiềm năng', NULL, NULL, 
    136, 1, 1, TO_DATE('6/8/2021 3:33:13 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (146, 'HistoryNotification.AllowEdit', 'Chỉnh sửa lịch sử thông báo', NULL, NULL, 
    144, 1, 1, TO_DATE('6/10/2021 1:35:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (144, 'HistoryNotification', 'Lịch sử thông báo', NULL, NULL, 
    NULL, 0, 1, TO_DATE('6/10/2021 1:35:30 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (160, 'Positions.AllowEdit', 'Sửa vị trí', NULL, NULL, 
    52, 1, 1, TO_DATE('7/13/2021 8:37:20 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (161, 'PositionApplings.AllowEdit', 'Sửa vị trí ứng tuyển', NULL, NULL, 
    54, 1, 1, TO_DATE('7/13/2021 8:38:05 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (162, 'Provinces.AllowEdit', 'Sửa tỉnh thành', NULL, NULL, 
    46, 1, 1, TO_DATE('7/13/2021 8:38:49 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (167, 'PositionNew.AllowView', 'Xem vị trí (mới)', NULL, NULL, 
    166, 1, 1, TO_DATE('8/22/2021 9:30:00 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (166, 'PositionNew', 'DM vị trí (mới)', NULL, NULL, 
    NULL, 0, 1, TO_DATE('8/22/2021 9:30:00 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('8/22/2021 9:31:36 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (169, 'AgentMoveTypes', 'DM Loại chuyển đổi đại lý', NULL, NULL, 
    NULL, 0, 1, TO_DATE('8/23/2021 9:06:20 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    TO_DATE('8/23/2021 9:37:49 AM', 'MM/DD/YYYY HH:MI:SS AM'), NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (178, 'ApprovalConfiguration.AllowDelete', 'Xóa quy trình', NULL, NULL, 
    174, 1, 1, TO_DATE('8/24/2021 3:41:51 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (180, 'Criterias.AllowView', 'Xem tiêu chí đánh giá', NULL, NULL, 
    179, 1, 1, TO_DATE('8/24/2021 9:51:34 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (183, 'Criterias.AllowDelete', 'Xóa tiêu chí đánh giá', NULL, NULL, 
    179, 1, 1, TO_DATE('8/24/2021 9:51:34 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (188, 'Answers.AllowDelete', 'Xóa câu trả lời tiêu chí ĐG', NULL, NULL, 
    184, 1, 1, TO_DATE('8/24/2021 9:54:44 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (185, 'Answers.AllowView', 'Xem câu trả lời tiêu chí ĐG', NULL, NULL, 
    184, 1, 1, TO_DATE('8/24/2021 9:54:44 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
Insert into "SysPermissions"
   ("PermissionId", "PermissionName", "Description", "Type", "Application", 
    "ParentId", "IsPermisstion", "IsActive", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (187, 'Answers.AllowEdit', 'Sửa câu trả lời tiêu chí ĐG', NULL, NULL, 
    184, 1, 1, TO_DATE('8/24/2021 9:54:44 PM', 'MM/DD/YYYY HH:MI:SS AM'), NULL, 
    NULL, NULL);
COMMIT;
