CREATE TABLE [AdventureWorksDW].[ProspectiveBuyer] (
    [ProspectiveBuyerKey]  INT             NOT NULL,
    [ProspectAlternateKey] VARCHAR (15)    NULL,
    [FirstName]            VARCHAR (100)   NULL,
    [MiddleName]           VARCHAR (100)   NULL,
    [LastName]             VARCHAR (100)   NULL,
    [BirthDate]            DATE            NULL,
    [MaritalStatus]        CHAR (1)        NULL,
    [Gender]               CHAR (1)        NULL,
    [EmailAddress]         VARCHAR (100)   NULL,
    [YearlyIncome]         DECIMAL (18, 4) NULL,
    [TotalChildren]        SMALLINT        NULL,
    [NumberChildrenAtHome] SMALLINT        NULL,
    [Education]            VARCHAR (40)    NULL,
    [Occupation]           VARCHAR (100)   NULL,
    [HouseOwnerFlag]       CHAR (1)        NULL,
    [NumberCarsOwned]      SMALLINT        NULL,
    [AddressLine1]         VARCHAR (240)   NULL,
    [AddressLine2]         VARCHAR (240)   NULL,
    [City]                 VARCHAR (60)    NULL,
    [StateProvinceCode]    VARCHAR (3)     NULL,
    [PostalCode]           VARCHAR (15)    NULL,
    [Phone]                VARCHAR (20)    NULL,
    [Salutation]           VARCHAR (16)    NULL,
    [Unknown]              INT             NULL
);


GO

ALTER TABLE [AdventureWorksDW].[ProspectiveBuyer]
    ADD PRIMARY KEY NONCLUSTERED ([ProspectiveBuyerKey] ASC) NOT ENFORCED;


GO