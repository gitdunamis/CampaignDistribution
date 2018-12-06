-- Create a new stored procedure called 'usp_TransactionTbl_insert' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_TransactionTbl_insert'
)
DROP PROCEDURE dbo.usp_TransactionTbl_insert
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_TransactionTbl_insert
    @BusId BIGINT,
    @CustId BIGINT,
    @TransAmount BIGINT
AS
    -- body of the stored procedure
    IF (dbo.Transaction_tbl) IS NOT NULL
    BEGIN
        INSERT INTO Transaction_tbl 
        VALUES (@BusId, @CustId, @TransAmount)
    END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_TransactionTbl_insert 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO


----------------------Insert Campaign Type ---------------------------------
-- Create a new stored procedure called 'usp_CampaignType_insert' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignType_insert'
)
DROP PROCEDURE dbo.usp_CampaignType_insert
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignType_insert
    @CamType NVARCHAR
-- add more stored procedure parameters here
AS
    IF (dbo.CampaignType) IS NOT NULL
    BEGIN
       INSERT INTO dbo.CampaignType
       ([Description]) VALUES (@CamType)
    END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignType_insert 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO


-------------------------Insert into campaign----------------------------
-- Create a new stored procedure called 'usp_CampaignCondition_insert' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignCondition_insert'
)
DROP PROCEDURE dbo.usp_CampaignCondition_insert
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignCondition_insert
    @CondType BIGINT
AS
    -- body of the stored procedure
    IF (dbo.CampaignCondition) IS NOT NULL
    BEGIN
        INSERT INTO dbo.CampaignCondition (ConditionType)
        VALUES ( @CondType )
    END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignCondition_insert 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO
