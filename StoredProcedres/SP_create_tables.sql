----------------- Create 'usp_CreateTransaction_tbl' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CreateTransaction_tbl'
)
DROP PROCEDURE dbo.usp_CreateTransaction_tbl
GO
-- Create the stored procedure in the specified schema

CREATE PROCEDURE dbo.usp_CreateTransaction_tbl
AS
-- body of the stored procedure

-- Create a new table called 'Transaction_tbl' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Transaction_tbl', 'U') IS NOT NULL
    DROP TABLE dbo.Transaction_tbl
    GO
-- Create the table in the specified schema
CREATE TABLE dbo.Transaction_tbl
(
    TransactionId BIGINT NOT NULL PRIMARY KEY,
    -- primary key column
    CampainId BIGINT ,
    BusinessId BIGINT,
    CustomerId BIGINT,
    TransactionAmount BIGINT
);
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CreateTransaction_tbl 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO


---------------Create stored procedure to create Table Campaign Type---------------------------------------------
-- Create a new stored procedure called 'usp_CampaignType_create' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignType_create'
)
DROP PROCEDURE dbo.usp_CampaignType_create
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignType_create
AS
-- Create a new table called 'CampaignType_tbl' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.CampaignType_tbl', 'U') IS NOT NULL
DROP TABLE dbo.CampaignType_tbl
GO
SET NOCOUNT ON
-- Create the table in the specified schema
CREATE TABLE dbo.CampaignType_tbl
(
    CampaignTypeId INT NOT NULL PRIMARY KEY, -- primary key column
    [Description] [NVARCHAR](50) NOT NULL,
)
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignType_create 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO


---------------Create stored procedure to create Table CampaignCondition---------------------------------------------
-- Create a new stored procedure called 'usp_CampaignCondition_Create' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_CampaignCondition_Create'
)
DROP PROCEDURE dbo.usp_CampaignCondition_Create
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_CampaignCondition_Create
AS
    -- body of the stored procedure
    -- Create a new table called 'CampaignCondition' in schema 'dbo'
    -- Drop the table if it already exists
    IF OBJECT_ID('dbo.CampaignCondition', 'U') IS NOT NULL
    DROP TABLE dbo.CampaignCondition
    GO
    -- Create the table in the specified schema
    SET NOCOUNT ON
    CREATE TABLE dbo.CampaignCondition
    (
        CampaignConditionId INT NOT NULL PRIMARY KEY, -- primary key column
        ConditionType [NVARCHAR](50) NOT NULL,
        --- CampaignId BIGINT NOT NULL,
    )
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_CampaignCondition_Create 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO

----------------------------------Create Voucher Table----------------------
-- Create a new stored procedure called 'usp_Vouchertbl_create' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'usp_Vouchertbl_create'
)
DROP PROCEDURE dbo.usp_Vouchertbl_create
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.usp_Vouchertbl_create
AS
    -- body of the stored procedure
    -- Create a new table called 'Voucher_tbl' in schema 'dbo'
    -- Drop the table if it already exists
    IF OBJECT_ID('dbo.Voucher_tbl', 'U') IS NOT NULL
    DROP TABLE dbo.Voucher_tbl
    GO
    -- Create the table in the specified schema
    CREATE TABLE dbo.Voucher_tbl
    (
        VoucherId INT NOT NULL PRIMARY KEY, -- primary key column
        VoucherCode [NVARCHAR](50) NOT NULL,
        CampaingName [NVARCHAR](50) NOT NULL,
        [State] [NVARCHAR](50) NOT NULL,
        Discount BIGINT NOT NULL,
        RedemptionQuantity INT NOT NULL DEFAULT 1,
        RedemptionCount INT DEFAULT 0,
        [Enabled] BOOLEAN

        -- specify more columns here
    );
    GO
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.usp_Vouchertbl_create 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO
