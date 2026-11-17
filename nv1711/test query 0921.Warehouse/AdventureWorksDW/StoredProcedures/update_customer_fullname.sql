CREATE PROCEDURE AdventureWorksDW.update_customer_fullname
@customer_key INT, @pFirstName VARCHAR (50), @pMiddleName VARCHAR (50), @pLastName VARCHAR (50)
AS
BEGIN
    UPDATE DimCustomer
    SET    FirstName  = @pFirstName,
           MiddleName = @pMiddleName,
           LastName   = @pLastName
    WHERE  CustomerKey = @customer_key;
END

GO