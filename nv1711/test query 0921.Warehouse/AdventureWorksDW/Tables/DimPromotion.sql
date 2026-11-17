CREATE TABLE [AdventureWorksDW].[DimPromotion] (
    [PromotionKey]             INT           NOT NULL,
    [PromotionAlternateKey]    INT           NULL,
    [EnglishPromotionName]     VARCHAR (255) NULL,
    [SpanishPromotionName]     VARCHAR (510) NULL,
    [FrenchPromotionName]      VARCHAR (510) NULL,
    [DiscountPct]              NUMERIC (18)  NULL,
    [EnglishPromotionType]     VARCHAR (50)  NULL,
    [SpanishPromotionType]     VARCHAR (100) NULL,
    [FrenchPromotionType]      VARCHAR (100) NULL,
    [EnglishPromotionCategory] VARCHAR (50)  NULL,
    [SpanishPromotionCategory] VARCHAR (100) NULL,
    [FrenchPromotionCategory]  VARCHAR (100) NULL,
    [StartDate]                DATE          NOT NULL,
    [EndDate]                  DATE          NULL,
    [MinQty]                   INT           NULL,
    [MaxQty]                   INT           NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimPromotion]
    ADD PRIMARY KEY NONCLUSTERED ([PromotionKey] ASC) NOT ENFORCED;


GO