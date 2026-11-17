CREATE TABLE [AdventureWorksDW].[FactFinance] (
    [FinanceKey]         INT          NOT NULL,
    [DateKey]            INT          NOT NULL,
    [OrganizationKey]    INT          NOT NULL,
    [DepartmentGroupKey] INT          NOT NULL,
    [ScenarioKey]        INT          NOT NULL,
    [AccountKey]         INT          NOT NULL,
    [Amount]             NUMERIC (18) NOT NULL,
    [Date]               DATE         NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactFinance]
    ADD CONSTRAINT [FK_FactFinance_DimAccount] FOREIGN KEY ([AccountKey]) REFERENCES [AdventureWorksDW].[DimAccount] ([AccountKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactFinance]
    ADD CONSTRAINT [FK_FactFinance_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [AdventureWorksDW].[DimDate] ([DateKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactFinance]
    ADD CONSTRAINT [FK_FactFinance_DimDepartmentGroup] FOREIGN KEY ([DepartmentGroupKey]) REFERENCES [AdventureWorksDW].[DimDepartmentGroup] ([DepartmentGroupKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactFinance]
    ADD CONSTRAINT [FK_FactFinance_DimOrganization] FOREIGN KEY ([OrganizationKey]) REFERENCES [AdventureWorksDW].[DimOrganization] ([OrganizationKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactFinance]
    ADD CONSTRAINT [FK_FactFinance_DimScenario] FOREIGN KEY ([ScenarioKey]) REFERENCES [AdventureWorksDW].[DimScenario] ([ScenarioKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactFinance]
    ADD PRIMARY KEY NONCLUSTERED ([FinanceKey] ASC) NOT ENFORCED;


GO