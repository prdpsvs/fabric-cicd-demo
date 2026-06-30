CREATE FUNCTION sales.itvf_OrdersByCustomer(@customerId INT)
RETURNS TABLE
AS
RETURN (
    SELECT o.OrderId, o.OrderDate, o.Total
    FROM sales.Orders AS o
    WHERE o.CustomerId = @customerId
);

GO