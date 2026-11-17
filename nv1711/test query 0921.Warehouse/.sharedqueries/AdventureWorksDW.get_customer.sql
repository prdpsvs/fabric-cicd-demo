CREATE PROCEDURE AdventureWorksDW.get_customer
@customer_key INT
AS
DECLARE cur CURSOR
    FOR SELECT *
        FROM   AdventureWorksDW.DimCustomer
        WHERE  CustomerKey = @customer_key;
OPEN cur;

GO

