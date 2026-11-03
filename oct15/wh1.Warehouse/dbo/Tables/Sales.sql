CREATE TABLE [dbo].[Sales] (
    [SaleId]      BIGINT          NOT NULL,
    [CustomerId]  INT             NOT NULL,
    [ProductId]   INT             NOT NULL,
    [SaleDate]    DATE            NOT NULL,
    [Quantity]    INT             NOT NULL,
    [UnitPrice]   DECIMAL (18, 2) NOT NULL,
    [DiscountPct] DECIMAL (5, 2)  NULL
);


GO