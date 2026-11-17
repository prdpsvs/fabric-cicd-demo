CREATE TABLE [AdventureWorksDW].[FactSurveyResponse] (
    [SurveyResponseKey]             INT          NOT NULL,
    [DateKey]                       INT          NOT NULL,
    [CustomerKey]                   INT          NOT NULL,
    [ProductCategoryKey]            INT          NOT NULL,
    [EnglishProductCategoryName]    VARCHAR (50) NOT NULL,
    [ProductSubcategoryKey]         INT          NOT NULL,
    [EnglishProductSubcategoryName] VARCHAR (50) NOT NULL,
    [Date]                          DATE         NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactSurveyResponse]
    ADD PRIMARY KEY NONCLUSTERED ([SurveyResponseKey] ASC) NOT ENFORCED;


GO