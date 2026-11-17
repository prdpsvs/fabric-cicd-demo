CREATE TABLE [AdventureWorksDW].[DimReseller] (
    [ResellerKey]          INT             NOT NULL,
    [GeographyKey]         INT             NULL,
    [ResellerAlternateKey] VARCHAR (15)    NULL,
    [Phone]                VARCHAR (25)    NULL,
    [BusinessType]         VARCHAR (20)    NOT NULL,
    [ResellerName]         VARCHAR (100)   NOT NULL,
    [NumberEmployees]      INT             NULL,
    [OrderFrequency]       VARCHAR (1)     NULL,
    [OrderMonth]           SMALLINT        NULL,
    [FirstOrderYear]       INT             NULL,
    [LastOrderYear]        INT             NULL,
    [ProductLine]          VARCHAR (50)    NULL,
    [AddressLine1]         VARCHAR (120)   NULL,
    [AddressLine2]         VARCHAR (120)   NULL,
    [AnnualSales]          DECIMAL (18, 4) NULL,
    [BankName]             VARCHAR (100)   NULL,
    [MinPaymentType]       SMALLINT        NULL,
    [MinPaymentAmount]     DECIMAL (18, 4) NULL,
    [AnnualRevenue]        DECIMAL (18, 4) NULL,
    [YearOpened]           INT             NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimReseller]
    ADD PRIMARY KEY NONCLUSTERED ([ResellerKey] ASC) NOT ENFORCED;


GO