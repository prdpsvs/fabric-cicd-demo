CREATE PROCEDURE sales.usp_UpsertOrder
    @OrderId INT, @CustomerId INT, @OrderDate DATE, @Total DECIMAL(18,2)
AS
BEGIN
    DELETE FROM sales.Orders WHERE OrderId = @OrderId;
    INSERT INTO sales.Orders (OrderId, CustomerId, OrderDate, Total)
    VALUES (@OrderId, @CustomerId, @OrderDate, @Total);
END;

GO