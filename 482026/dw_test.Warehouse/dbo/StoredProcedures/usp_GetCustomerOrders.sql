CREATE PROCEDURE [dbo].[usp_GetCustomerOrders]  

    @CustomerID INT  

AS  

BEGIN  

    SET NOCOUNT ON;    

 

    SELECT  

        [OrderID],  

        [OrderDate],  

        [ShippedDate],  

        [TotalAmount]  

    FROM  

        [dbo].[Orders]  

    WHERE  

        [CustomerID] = @CustomerID  

    ORDER BY  

        [OrderDate] DESC;  

END;