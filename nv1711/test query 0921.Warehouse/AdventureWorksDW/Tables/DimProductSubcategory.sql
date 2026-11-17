CREATE TABLE [AdventureWorksDW].[DimProductSubcategory] (
    [ProductSubcategoryKey]          INT          NOT NULL,
    [ProductSubcategoryAlternateKey] INT          NULL,
    [EnglishProductSubcategoryName]  VARCHAR (50) NOT NULL,
    [SpanishProductSubcategoryName]  VARCHAR (50) NOT NULL,
    [FrenchProductSubcategoryName]   VARCHAR (50) NOT NULL,
    [ProductCategoryKey]             INT          NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimProductSubcategory]
    ADD CONSTRAINT [FK_DimProductSubcategory_DimProductCategory] FOREIGN KEY ([ProductCategoryKey]) REFERENCES [AdventureWorksDW].[DimProductCategory] ([ProductCategoryKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimProductSubcategory]
    ADD PRIMARY KEY NONCLUSTERED ([ProductSubcategoryKey] ASC) NOT ENFORCED;


GO