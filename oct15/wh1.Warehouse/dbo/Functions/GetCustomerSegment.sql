CREATE FUNCTION dbo.GetCustomerSegment
(
    @LifetimeValue DECIMAL(18,2)
)
RETURNS VARCHAR(20)
AS
BEGIN
    RETURN
        CASE
            WHEN @LifetimeValue >= 5000 THEN 'Platinum'
            WHEN @LifetimeValue >= 2500 THEN 'Gold'
            WHEN @LifetimeValue >= 1000 THEN 'Silver'
            ELSE 'Bronze'
        END;
END;

GO