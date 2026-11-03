CREATE VIEW dbo.vw_CustomerSalesSummary
AS
SELECT
    c.CustomerId,
    c.CustomerName,
    c.Region,
    COUNT_BIG(s.SaleId) AS TransactionCount,
    COALESCE(SUM(
        dbo.CalculateNetAmount(
            s.Quantity,
            s.UnitPrice,
            s.DiscountPct
        )
    ), 0) AS LifetimeValue,
    MAX(s.SaleDate) AS LastSaleDate,
    dbo.GetCustomerSegment(
        COALESCE(SUM(
            dbo.CalculateNetAmount(
                s.Quantity,
                s.UnitPrice,
                s.DiscountPct
            )
        ), 0)
    ) AS CustomerSegment
FROM dbo.Customers AS c
LEFT JOIN dbo.Sales AS s
    ON c.CustomerId = s.CustomerId
GROUP BY
    c.CustomerId,
    c.CustomerName,
    c.Region;

GO