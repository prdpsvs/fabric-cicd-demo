CREATE TABLE [AdventureWorksDW].[NewFactCurrencyRate] (
    [AverageRate]  NUMERIC (18) NULL,
    [CurrencyID]   VARCHAR (6)  NULL,
    [CurrencyDate] DATE         NULL,
    [EndOfDayRate] NUMERIC (18) NULL,
    [CurrencyKey]  INT          NULL,
    [DateKey]      INT          NULL
);


GO