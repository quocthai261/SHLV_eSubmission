SET DEFINE OFF;
Insert into "MappingNextPositions"
   ("MappingId", "CurrentPositionCode", "NextPositionCode", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (1, 'FC', 'RM', NULL, NULL, 
    NULL, NULL);
Insert into "MappingNextPositions"
   ("MappingId", "CurrentPositionCode", "NextPositionCode", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (2, 'RM', 'UM', NULL, NULL, 
    NULL, NULL);
Insert into "MappingNextPositions"
   ("MappingId", "CurrentPositionCode", "NextPositionCode", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (3, 'UM', 'SrUM', NULL, NULL, 
    NULL, NULL);
Insert into "MappingNextPositions"
   ("MappingId", "CurrentPositionCode", "NextPositionCode", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (4, 'UM', 'DM', NULL, NULL, 
    NULL, NULL);
Insert into "MappingNextPositions"
   ("MappingId", "CurrentPositionCode", "NextPositionCode", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (5, 'DM', 'SrDM', NULL, NULL, 
    NULL, NULL);
Insert into "MappingNextPositions"
   ("MappingId", "CurrentPositionCode", "NextPositionCode", "CreationDate", "CreatedBy", 
    "LastUpdatedDate", "LastUpdatedBy")
 Values
   (6, 'SrUM', 'DM', NULL, NULL, 
    NULL, NULL);
COMMIT;
