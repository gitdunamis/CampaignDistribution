-- Create a new stored procedure called 'usp_TransactionTbl_drop' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_TransactionTbl_drop'
)
DROP PROCEDURE dbo.usp_TransactionTbl_drop
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_TransactionTbl_drop
AS
    -- Drop the table 'Transaction_tbl' in schema 'dbo'
    IF EXISTS (
        SELECT *
            FROM sys.tables
            JOIN sys.schemas
                ON sys.tables.schema_id = sys.schemas.schema_id
        WHERE sys.schemas.name = N'dbo'
            AND sys.tables.name = N'Transaction_tbl'
    )
        DROP TABLE dbo.Transaction_tbl
    GO  
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_TransactionTbl_drop
GO


------------------------drop CampaignCondition table ----------------------
-- Create a new stored procedure called 'usp_CampaignCondition_drop' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignCondition_drop'
)
DROP PROCEDURE dbo.usp_CampaignCondition_drop
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignCondition_drop
AS
    -- Drop the table 'Transaction_tbl' in schema 'dbo'
    IF EXISTS (
        SELECT *
            FROM sys.tables
            JOIN sys.schemas
                ON sys.tables.schema_id = sys.schemas.schema_id
        WHERE sys.schemas.name = N'dbo'
            AND sys.tables.name = N'CampaignCondition_tbl'
    )
        DROP TABLE dbo.CampaignCondition_tbl
    GO  
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_TransactionTbl_drop
GO

--------------------------drop CampaignTypes table ----------------------------------
-- Create a new stored procedure called 'usp_CampaignTypes_drop' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignTypes_drop'
)
DROP PROCEDURE dbo.usp_CampaignTypes_drop
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignTypes_drop

AS
    SET NOCOUNT ON
    IF (dbo.CampaignTypes) IS NOT NULL
    BEGIN
        DROP TABLE CampaignTypes
    END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignTypes_drop 
GO
