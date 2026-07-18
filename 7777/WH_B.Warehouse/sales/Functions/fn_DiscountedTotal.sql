CREATE FUNCTION sales.fn_DiscountedTotal(@total DECIMAL(18,2), @pct DECIMAL(5,2))
RETURNS DECIMAL(18,2)
AS
BEGIN
    RETURN @total * (1 - @pct / 100.0);
END;

GO