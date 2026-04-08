-- Auto Generated (Do not modify) A0FE8FDB0CB0884D78E1ADC5B841F3B83DEC517AF07A6507D881C35D9E444045


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