CREATE VIEW dbo.vw_SalesFromB
AS
SELECT b.SaleId, b.CustomerId, b.Amount
FROM [dw2].[dbo].[vw_SalesFromA] AS b;

GO