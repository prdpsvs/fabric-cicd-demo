CREATE TABLE [AdventureWorksDW].[FactResellerSales] (
    [ProductKey]            INT             NOT NULL,
    [OrderDateKey]          INT             NOT NULL,
    [DueDateKey]            INT             NOT NULL,
    [ShipDateKey]           INT             NOT NULL,
    [ResellerKey]           INT             NOT NULL,
    [EmployeeKey]           INT             NOT NULL,
    [PromotionKey]          INT             NOT NULL,
    [CurrencyKey]           INT             NOT NULL,
    [SalesTerritoryKey]     INT             NOT NULL,
    [SalesOrderNumber]      VARCHAR (20)    NOT NULL,
    [SalesOrderLineNumber]  SMALLINT        NOT NULL,
    [RevisionNumber]        SMALLINT        NULL,
    [OrderQuantity]         SMALLINT        NULL,
    [UnitPrice]             DECIMAL (18, 4) NULL,
    [ExtendedAmount]        DECIMAL (18, 4) NULL,
    [UnitPriceDiscountPct]  NUMERIC (18)    NULL,
    [DiscountAmount]        NUMERIC (18)    NULL,
    [ProductStandardCost]   DECIMAL (18, 4) NULL,
    [TotalProductCost]      DECIMAL (18, 4) NULL,
    [SalesAmount]           DECIMAL (18, 4) NULL,
    [TaxAmt]                DECIMAL (18, 4) NULL,
    [Freight]               DECIMAL (18, 4) NULL,
    [CarrierTrackingNumber] VARCHAR (25)    NULL,
    [CustomerPONumber]      VARCHAR (25)    NULL,
    [OrderDate]             DATE            NULL,
    [DueDate]               DATE            NULL,
    [ShipDate]              DATE            NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactResellerSales]
    ADD CONSTRAINT [FK_FactResellerSales_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [AdventureWorksDW].[DimCurrency] ([CurrencyKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactResellerSales]
    ADD CONSTRAINT [FK_FactResellerSales_DimDate] FOREIGN KEY ([OrderDateKey]) REFERENCES [AdventureWorksDW].[DimDate] ([DateKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactResellerSales]
    ADD CONSTRAINT [FK_FactResellerSales_DimDate1] FOREIGN KEY ([DueDateKey]) REFERENCES [AdventureWorksDW].[DimDate] ([DateKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactResellerSales]
    ADD CONSTRAINT [FK_FactResellerSales_DimDate2] FOREIGN KEY ([ShipDateKey]) REFERENCES [AdventureWorksDW].[DimDate] ([DateKey]) NOT ENFORCED;


GO