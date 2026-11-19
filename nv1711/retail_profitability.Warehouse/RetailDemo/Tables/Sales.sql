CREATE TABLE [RetailDemo].[Sales] (
    [SaleId]       INT             NOT NULL,
    [SaleDate]     DATE            NOT NULL,
    [CustomerId]   INT             NOT NULL,
    [ProductId]    INT             NOT NULL,
    [Quantity]     INT             NOT NULL,
    [UnitPrice]    DECIMAL (12, 2) NOT NULL,
    [UnitCost]     DECIMAL (12, 2) NOT NULL,
    [DiscountRate] DECIMAL (5, 4)  NOT NULL
);


GO