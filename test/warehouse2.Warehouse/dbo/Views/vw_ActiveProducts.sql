-- Auto Generated (Do not modify) 3FF795DE867B9999AA222323087AF9BF72124150FE9E720A2FE06F4167B3433F
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