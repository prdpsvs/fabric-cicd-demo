CREATE PROCEDURE dbo.usp_GetSalesWithTax
    @customerId INT,
    @minAmount  DECIMAL(18,2) = 0   -- new param
AS
BEGIN
    SELECT v.*
    FROM [WH_A].[dbo].[vw_SalesWithTax] AS v
    WHERE v.CustomerId = @customerId AND v.Amount >= @minAmount;
END;

GO