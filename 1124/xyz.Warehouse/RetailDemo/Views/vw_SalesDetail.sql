CREATE   VIEW RetailDemo.vw_SalesDetail
AS
SELECT
    s.SaleId,
    s.SaleDate,
    c.CustomerId,
    c.CustomerName,
    c.Region,
    p.ProductId,
    p.ProductName,
    p.Category,
    s.Quantity,
    s.DiscountRate,
    CAST(s.Quantity * s.UnitPrice AS decimal(18, 2)) AS GrossRevenue,
    CAST(s.Quantity * s.UnitPrice * s.DiscountRate
        AS decimal(18, 2)) AS DiscountAmount,
    CAST(s.Quantity * s.UnitPrice * (1 - s.DiscountRate)
        AS decimal(18, 2)) AS NetRevenue,
    CAST(s.Quantity * s.UnitCost AS decimal(18, 2)) AS CostOfGoodsSold,
    CAST(s.Quantity * s.UnitPrice * (1 - s.DiscountRate)
        - s.Quantity * s.UnitCost AS decimal(18, 2)) AS GrossProfit
FROM RetailDemo.Sales AS s
INNER JOIN RetailDemo.Customers AS c ON c.CustomerId = s.CustomerId
INNER JOIN RetailDemo.Products AS p ON p.ProductId = s.ProductId;

GO