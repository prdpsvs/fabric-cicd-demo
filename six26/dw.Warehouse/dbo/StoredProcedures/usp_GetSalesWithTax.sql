CREATE PROCEDURE dbo.usp_GetSalesWithTax
    @customerId INT
AS
BEGIN
    SELECT v.*
    FROM [dw].[dbo].[vw_SalesWithTax] AS v          -- aliased three-part self-ref
    WHERE v.CustomerId = @customerId;
END;

GO