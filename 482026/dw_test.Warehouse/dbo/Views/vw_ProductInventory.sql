-- Auto Generated (Do not modify) E7CC599195961F2D3C28E8FE2B918D1CD5D2A288541EA80D9AA803E2A66894EA


CREATE VIEW [dbo].[vw_ProductInventory]  

AS  

SELECT  

    [ProductID],  

    [ProductName],  

    [UnitPrice],  

    [UnitsInStock],  

    [UnitPrice] * [UnitsInStock] AS InventoryValue  

FROM  

    [dbo].[Products];