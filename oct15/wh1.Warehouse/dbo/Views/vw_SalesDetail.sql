CREATE VIEW dbo.vw_SalesDetail
AS
SELECT
    s.SaleId,
    s.SaleDate,
    c.CustomerId,
    c.CustomerName,
    c.Region,
    c.CustomerTier,
    p.ProductId,
    p.ProductName,
    p.Category,
    s.Quantity,
    s.UnitPrice,
    COALESCE(s.DiscountPct, 0) AS DiscountPct,
    dbo.CalculateNetAmount
    (
        s.Quantity,
        s.UnitPrice,
        s.DiscountPct
    ) AS NetAmount
FROM dbo.Sales AS s
INNER JOIN dbo.Customers AS c
    ON s.CustomerId = c.CustomerId
INNER JOIN dbo.Products AS p
    ON s.ProductId = p.ProductId;

GO