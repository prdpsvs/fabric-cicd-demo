CREATE   VIEW dbo.vw_SalesWithTax
AS
SELECT s.SaleId,
       s.CustomerId,
       s.Amount,
       dw.[dbo].[fn_TaxAmount](s.Amount) AS Tax,   -- alias + three-part self-ref
       s.SaleDate
FROM [dw].[dbo].[Sales] AS s;                       -- aliased three-part self-ref

GO