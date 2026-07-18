CREATE   VIEW dbo.vw_SalesWithTax
AS
SELECT s.SaleId,
       s.CustomerId,
       s.Amount,
       [dbo].[fn_TaxAmount](s.Amount) AS Tax,
       s.SaleDate,
       YEAR(s.SaleDate) AS SaleYear  -- new
FROM [WH_A].[dbo].[Sales] AS s;

GO