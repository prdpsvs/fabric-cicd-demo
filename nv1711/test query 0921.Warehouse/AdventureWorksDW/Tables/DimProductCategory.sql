CREATE TABLE [AdventureWorksDW].[DimProductCategory] (
    [ProductCategoryKey]          INT          NOT NULL,
    [ProductCategoryAlternateKey] INT          NULL,
    [EnglishProductCategoryName]  VARCHAR (50) NOT NULL,
    [SpanishProductCategoryName]  VARCHAR (50) NOT NULL,
    [FrenchProductCategoryName]   VARCHAR (50) NOT NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimProductCategory]
    ADD PRIMARY KEY NONCLUSTERED ([ProductCategoryKey] ASC) NOT ENFORCED;


GO