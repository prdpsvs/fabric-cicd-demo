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

GO