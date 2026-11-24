
-- Demo 1: Inspect the joined sales data and calculated financial measures.
SELECT
    SaleId, SaleDate, CustomerName, Region, ProductName,
    Quantity, DiscountAmount, NetRevenue, GrossProfit
FROM RetailDemo.vw_SalesDetail
ORDER BY SaleId;
GO

-- Demo 2: Reuse the function to find products below a 25% margin.
SELECT ProductName, Region, NetRevenue, GrossProfit, GrossMarginPercent
FROM RetailDemo.fn_ProductMargins('20261101', '20261130')
WHERE GrossMarginPercent < 25.00
ORDER BY GrossMarginPercent, ProductName, Region;
GO

-- Demo 3: Run the business report across all regions.
-- Expected: 8 rows; the Central keyboard is loss-making (-9.38% margin).
EXEC RetailDemo.usp_ProductProfitability
    @StartDate = '20261101',
    @EndDate = '20261130',
    @TargetMarginPercent = 25.00;
GO

-- Demo 4: Drill into the West region.
-- Expected: the standing desk is below target (6.83% margin).
EXEC RetailDemo.usp_ProductProfitability
    @StartDate = '20261101',
    @EndDate = '20261130',
    @TargetMarginPercent = 25.00,
    @Region = 'West';
GO