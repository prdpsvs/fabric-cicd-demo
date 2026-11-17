CREATE TABLE [AdventureWorksDW].[FactCurrencyRate] (
    [CurrencyKey]  INT          NOT NULL,
    [DateKey]      INT          NOT NULL,
    [AverageRate]  NUMERIC (18) NOT NULL,
    [EndOfDayRate] NUMERIC (18) NOT NULL,
    [Date]         DATE         NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactCurrencyRate]
    ADD PRIMARY KEY NONCLUSTERED ([CurrencyKey] ASC, [DateKey] ASC) NOT ENFORCED;


GO