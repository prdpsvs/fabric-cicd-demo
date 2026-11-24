-- PRE-DEPLOYMENT: Create the table only if it does not exist.
IF OBJECT_ID('dbo.CICDDemo', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.CICDDemo
    (
        DemoId int NOT NULL,
        DemoName varchar(100) NOT NULL
    );
END;
GO
