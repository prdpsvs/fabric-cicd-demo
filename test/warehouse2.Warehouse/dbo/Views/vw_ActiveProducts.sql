CREATE VIEW dbo.vw_ActiveProducts
AS
SELECT
    p.ProductID,
    p.ProductName,
    p.Category,
    p.UnitPrice,
    p.StockQuantity
FROM [Warehouse1].dbo.Products AS p    -- ← 3-part name: [DatabaseName].[schema].[table]
WHERE p.IsActive = 1;

GO