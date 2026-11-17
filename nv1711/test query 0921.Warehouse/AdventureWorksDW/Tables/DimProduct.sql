CREATE TABLE [AdventureWorksDW].[DimProduct] (
    [ProductKey]            INT             NOT NULL,
    [ProductAlternateKey]   VARCHAR (25)    NULL,
    [ProductSubcategoryKey] INT             NULL,
    [WeightUnitMeasureCode] CHAR (3)        NULL,
    [SizeUnitMeasureCode]   CHAR (3)        NULL,
    [EnglishProductName]    VARCHAR (50)    NOT NULL,
    [SpanishProductName]    VARCHAR (50)    NOT NULL,
    [FrenchProductName]     VARCHAR (50)    NOT NULL,
    [StandardCost]          DECIMAL (18, 4) NULL,
    [FinishedGoodsFlag]     SMALLINT        NOT NULL,
    [Color]                 VARCHAR (15)    NOT NULL,
    [SafetyStockLevel]      SMALLINT        NULL,
    [ReorderPoint]          SMALLINT        NULL,
    [ListPrice]             DECIMAL (18, 4) NULL,
    [SIZE]                  VARCHAR (50)    NULL,
    [SizeRange]             VARCHAR (50)    NULL,
    [Weight]                NUMERIC (18)    NULL,
    [DaysToManufacture]     INT             NULL,
    [ProductLine]           VARCHAR (2)     NULL,
    [DealerPrice]           DECIMAL (18, 4) NULL,
    [Class]                 VARCHAR (2)     NULL,
    [STYLE]                 VARCHAR (2)     NULL,
    [ModelName]             VARCHAR (100)   NULL,
    [LargePhoto]            VARBINARY (MAX) NULL,
    [EnglishDescription]    VARCHAR (400)   NULL,
    [FrenchDescription]     VARCHAR (400)   NULL,
    [ChineseDescription]    VARCHAR (800)   NULL,
    [ArabicDescription]     VARCHAR (800)   NULL,
    [HebrewDescription]     VARCHAR (800)   NULL,
    [ThaiDescription]       VARCHAR (800)   NULL,
    [GermanDescription]     VARCHAR (400)   NULL,
    [JapaneseDescription]   VARCHAR (800)   NULL,
    [TurkishDescription]    VARCHAR (800)   NULL,
    [StartDate]             DATE            NULL,
    [EndDate]               DATE            NULL,
    [Status]                VARCHAR (7)     NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimProduct]
    ADD CONSTRAINT [FK_DimProduct_DimProductSubcategory] FOREIGN KEY ([ProductSubcategoryKey]) REFERENCES [AdventureWorksDW].[DimProductSubcategory] ([ProductSubcategoryKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimProduct]
    ADD PRIMARY KEY NONCLUSTERED ([ProductKey] ASC) NOT ENFORCED;


GO