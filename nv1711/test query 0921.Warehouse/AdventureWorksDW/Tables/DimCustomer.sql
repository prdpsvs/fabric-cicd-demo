CREATE TABLE [AdventureWorksDW].[DimCustomer] (
    [CustomerKey]          INT             NOT NULL,
    [GeographyKey]         INT             NULL,
    [CustomerAlternateKey] VARCHAR (15)    NOT NULL,
    [Title]                VARCHAR (16)    NULL,
    [FirstName]            VARCHAR (100)   NULL,
    [MiddleName]           VARCHAR (100)   NULL,
    [LastName]             VARCHAR (100)   NULL,
    [NameStyle]            SMALLINT        NULL,
    [BirthDate]            DATE            NULL,
    [MaritalStatus]        CHAR (1)        NULL,
    [Suffix]               VARCHAR (20)    NULL,
    [Gender]               CHAR (1)        NULL,
    [EmailAddress]         VARCHAR (100)   NULL,
    [YearlyIncome]         DECIMAL (18, 4) NULL,
    [TotalChildren]        SMALLINT        NULL,
    [NumberChildrenAtHome] SMALLINT        NULL,
    [EnglishEducation]     VARCHAR (40)    NULL,
    [SpanishEducation]     VARCHAR (40)    NULL,
    [FrenchEducation]      VARCHAR (40)    NULL,
    [EnglishOccupation]    VARCHAR (100)   NULL,
    [SpanishOccupation]    VARCHAR (100)   NULL,
    [FrenchOccupation]     VARCHAR (100)   NULL,
    [HouseOwnerFlag]       CHAR (1)        NULL,
    [NumberCarsOwned]      SMALLINT        NULL,
    [AddressLine1]         VARCHAR (240)   NULL,
    [AddressLine2]         VARCHAR (240)   NULL,
    [Phone]                VARCHAR (20)    NULL,
    [DateFirstPurchase]    DATE            NULL,
    [CommuteDistance]      VARCHAR (15)    NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimCustomer]
    ADD CONSTRAINT [FK_DimCustomer_DimGeography] FOREIGN KEY ([GeographyKey]) REFERENCES [AdventureWorksDW].[DimGeography] ([GeographyKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimCustomer]
    ADD PRIMARY KEY NONCLUSTERED ([CustomerKey] ASC) NOT ENFORCED;


GO