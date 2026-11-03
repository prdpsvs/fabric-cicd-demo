CREATE FUNCTION dbo.CalculateNetAmount
(
    @Quantity       INT,
    @UnitPrice      DECIMAL(18,2),
    @DiscountPct    DECIMAL(5,2)
)
RETURNS DECIMAL(18,2)
AS
BEGIN
    RETURN
        CAST(
            @Quantity * @UnitPrice *
            (1 - COALESCE(@DiscountPct, 0) / 100.0)
            AS DECIMAL(18,2)
        );
END;

GO