CREATE TABLE [AdventureWorksDW].[DimSalesTerritory] (
    [SalesTerritoryKey]          INT             NOT NULL,
    [SalesTerritoryAlternateKey] INT             NULL,
    [SalesTerritoryRegion]       VARCHAR (50)    NOT NULL,
    [SalesTerritoryCountry]      VARCHAR (50)    NOT NULL,
    [SalesTerritoryGroup]        VARCHAR (50)    NULL,
    [SalesTerritoryImage]        VARBINARY (MAX) NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimSalesTerritory]
    ADD PRIMARY KEY NONCLUSTERED ([SalesTerritoryKey] ASC) NOT ENFORCED;


GO