CREATE VIEW [dbo].[vw_CustomerOrders]  

AS  

SELECT  

    c.[CustomerID],  

    c.[FirstName] + ' ' + c.[LastName] AS CustomerName,  

    o.[OrderID],  

    o.[OrderDate],  

    o.[TotalAmount]  

FROM  

    [dbo].[Customers] c  

    INNER JOIN [dbo].[Orders] o ON c.[CustomerID] = o.[CustomerID];

GO