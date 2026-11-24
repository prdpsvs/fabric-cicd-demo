
-- POST-DEPLOYMENT: Check the table exists before checking/inserting the row.
IF OBJECT_ID('dbo.CICDDemo', 'U') IS NOT NULL
BEGIN
    INSERT INTO dbo.CICDDemo (DemoId, DemoName)
    VALUES (1, 'Retail profitability CI/CD demo');
END;
