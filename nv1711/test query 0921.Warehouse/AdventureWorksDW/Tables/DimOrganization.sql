CREATE TABLE [AdventureWorksDW].[DimOrganization] (
    [OrganizationKey]       INT          NOT NULL,
    [ParentOrganizationKey] INT          NULL,
    [PercentageOfOwnership] VARCHAR (16) NULL,
    [OrganizationName]      VARCHAR (50) NULL,
    [CurrencyKey]           INT          NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimOrganization]
    ADD PRIMARY KEY NONCLUSTERED ([OrganizationKey] ASC) NOT ENFORCED;


GO