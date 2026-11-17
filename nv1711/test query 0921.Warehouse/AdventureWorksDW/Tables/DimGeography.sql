CREATE TABLE [AdventureWorksDW].[DimGeography] (
    [GeographyKey]             INT          NOT NULL,
    [City]                     VARCHAR (60) NULL,
    [StateProvinceCode]        VARCHAR (3)  NULL,
    [StateProvinceName]        VARCHAR (50) NULL,
    [CountryRegionCode]        VARCHAR (3)  NULL,
    [EnglishCountryRegionName] VARCHAR (50) NULL,
    [SpanishCountryRegionName] VARCHAR (50) NULL,
    [FrenchCountryRegionName]  VARCHAR (50) NULL,
    [PostalCode]               VARCHAR (15) NULL,
    [SalesTerritoryKey]        INT          NULL,
    [IpAddressLocator]         VARCHAR (15) NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimGeography]
    ADD PRIMARY KEY NONCLUSTERED ([GeographyKey] ASC) NOT ENFORCED;


GO