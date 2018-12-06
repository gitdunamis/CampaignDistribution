-- Create a new stored procedure called 'usp_Transaction_read' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_Transaction_read'
)
DROP PROCEDURE dbo.usp_Transaction_read
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_Transaction_read
    @TransactionId BIGINT
AS
    -- body of the stored procedure
    IF (dbo.Transaction_tbl) IS NOT NULL
    SELECT TransactionAmount FROM Transaction_tbl WHERE TransactionId = @TranId
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_Transaction_read 1
GO


------------------Read from CampaignType-----------------------------
-- Create a new stored procedure called 'usp_CampaignType_readById' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignType_readById'
)
DROP PROCEDURE dbo.usp_CampaignType_readById
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignType_readById
    @Id INT
AS
    IF (dbo.CampaignType_tbl) IS NOT NULL
    SELECT Id, [Description] FROM dbo.CampaignType_tbl WHERE Id = @Id 
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignType_readById 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO


--------------------------Read from CampaignCondition by Id ----------------------------
-- Create a new stored procedure called 'usp_CampaignCondition_readById' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignCondition_readById'
)
DROP PROCEDURE dbo.usp_CampaignCondition_readById
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignCondition_readById
    @cId BIGINT
AS
    -- body of the stored procedure
    SELECT CampaignConditionId, ConditionType FROM dbo.CampaignCondition 
    WHERE Id = @cId
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignCondition_readById 1 
GO
