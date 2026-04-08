CREATE FUNCTION [dbo].[fn_CalculateOrderValue]  

(  

    @OrderID INT  

)  

RETURNS DECIMAL(12,2)  

AS  

BEGIN  

    DECLARE @Total DECIMAL(12,2);    

 

    SELECT @Total = [TotalAmount]  

    FROM [dbo].[Orders]  

    WHERE [OrderID] = @OrderID;  

 

     

 

    RETURN ISNULL(@Total, 0);  

END;

GO