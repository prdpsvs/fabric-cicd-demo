CREATE VIEW dbo.vw_SalesFromA
AS
SELECT s.SaleId, s.CustomerId, s.Amount
FROM [dw].[dbo].[Sales] AS s;

GO