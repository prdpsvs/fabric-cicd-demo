CREATE   PROCEDURE RetailDemo.usp_ProductProfitability
    @StartDate date,
    @EndDate date,
    @TargetMarginPercent decimal(5, 2) = 25.00,
    @Region varchar(30) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @StartDate IS NULL OR @EndDate IS NULL OR @StartDate > @EndDate
    BEGIN
        THROW 50001, 'Provide a valid start date and an end date on or after it.', 1;
    END;

    IF @TargetMarginPercent IS NULL
       OR @TargetMarginPercent < 0 OR @TargetMarginPercent > 100
    BEGIN
        THROW 50002, 'Target margin must be between 0 and 100 percent.', 1;
    END;

    SELECT
        ProductName,
        Category,
        Region,
        UnitsSold,
        TotalDiscounts,
        NetRevenue,
        CostOfGoodsSold,
        GrossProfit,
        GrossMarginPercent,
        @TargetMarginPercent AS TargetMarginPercent,
        CASE
            WHEN GrossMarginPercent IS NULL THEN 'No net revenue'
            WHEN GrossMarginPercent < 0 THEN 'Loss-making'
            WHEN GrossMarginPercent < @TargetMarginPercent THEN 'Below target'
            ELSE 'On target'
        END AS MarginStatus
    FROM RetailDemo.fn_ProductMargins(@StartDate, @EndDate)
    WHERE @Region IS NULL OR Region = @Region
    ORDER BY GrossMarginPercent ASC, ProductName ASC, Region ASC;
END;

GO