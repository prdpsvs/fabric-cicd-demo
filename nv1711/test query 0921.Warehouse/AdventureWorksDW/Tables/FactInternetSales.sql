CREATE TABLE [AdventureWorksDW].[FactInternetSales] (
    [ProductKey]            INT             NOT NULL,
    [OrderDateKey]          INT             NOT NULL,
    [DueDateKey]            INT             NOT NULL,
    [ShipDateKey]           INT             NOT NULL,
    [CustomerKey]           INT             NOT NULL,
    [PromotionKey]          INT             NOT NULL,
    [CurrencyKey]           INT             NOT NULL,
    [SalesTerritoryKey]     INT             NOT NULL,
    [SalesOrderNumber]      VARCHAR (20)    NOT NULL,
    [SalesOrderLineNumber]  SMALLINT        NOT NULL,
    [RevisionNumber]        SMALLINT        NOT NULL,
    [OrderQuantity]         SMALLINT        NOT NULL,
    [UnitPrice]             DECIMAL (18, 4) NOT NULL,
    [ExtendedAmount]        DECIMAL (18, 4) NOT NULL,
    [UnitPriceDiscountPct]  NUMERIC (18)    NOT NULL,
    [DiscountAmount]        NUMERIC (18)    NOT NULL,
    [ProductStandardCost]   DECIMAL (18, 4) NOT NULL,
    [TotalProductCost]      DECIMAL (18, 4) NOT NULL,
    [SalesAmount]           DECIMAL (18, 4) NOT NULL,
    [TaxAmt]                DECIMAL (18, 4) NOT NULL,
    [Freight]               DECIMAL (18, 4) NOT NULL,
    [CarrierTrackingNumber] VARCHAR (25)    NULL,
    [CustomerPONumber]      VARCHAR (25)    NULL,
    [OrderDate]             DATE            NULL,
    [DueDate]               DATE            NULL,
    [ShipDate]              DATE            NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactInternetSales]
    ADD CONSTRAINT [FK_FactInternetSales_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [AdventureWorksDW].[DimCurrency] ([CurrencyKey]) NOT ENFORCED;


GO