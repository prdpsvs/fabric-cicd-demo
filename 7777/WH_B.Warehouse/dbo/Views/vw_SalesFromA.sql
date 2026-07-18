CREATE VIEW dbo.vw_SalesFromA
AS
SELECT s.SaleId, s.CustomerId, s.Amount
FROM [WH_A].[dbo].[Sales] AS s;

GO