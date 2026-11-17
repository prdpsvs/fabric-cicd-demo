CREATE TABLE [AdventureWorksDW].[DimCurrency] (
    [CurrencyKey]          INT           NOT NULL,
    [CurrencyAlternateKey] CHAR (3)      NOT NULL,
    [CurrencyName]         VARCHAR (100) NOT NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimCurrency]
    ADD PRIMARY KEY NONCLUSTERED ([CurrencyKey] ASC) NOT ENFORCED;


GO