-- Script.PreDeployment1.sql
PRINT 'Pre-deploy start';
GO
-- Script.PostDeployment1.sql (idempotent seed)
IF NOT EXISTS (SELECT 1 FROM dbo.Customer WHERE CustomerId = 1)
    INSERT INTO dbo.Customer (CustomerId, FirstName, LastName, Email)
    VALUES (1, 'Seed', 'User', 'seed@contoso.com');