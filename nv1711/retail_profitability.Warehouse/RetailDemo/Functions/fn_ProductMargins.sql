CREATE   FUNCTION RetailDemo.fn_ProductMargins
(
    @StartDate date,
    @EndDate date
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        ProductId,
        ProductName,
        Category,
        Region,
        SUM(Quantity) AS UnitsSold,
        SUM(DiscountAmount) AS TotalDiscounts,
        SUM(NetRevenue) AS NetRevenue,
        SUM(CostOfGoodsSold) AS CostOfGoodsSold,
        SUM(GrossProfit) AS GrossProfit,
        CAST(
            SUM(GrossProfit) / NULLIF(SUM(NetRevenue), 0) * 100.0
            AS decimal(9, 2)
        ) AS GrossMarginPercent
    FROM RetailDemo.vw_SalesDetail
    WHERE SaleDate >= @StartDate
      AND SaleDate <= @EndDate
    GROUP BY ProductId, ProductName, Category, Region
);

GO