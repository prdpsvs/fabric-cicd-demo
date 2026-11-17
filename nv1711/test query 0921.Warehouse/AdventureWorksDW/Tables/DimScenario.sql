CREATE TABLE [AdventureWorksDW].[DimScenario] (
    [ScenarioKey]  INT          NOT NULL,
    [ScenarioName] VARCHAR (50) NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimScenario]
    ADD PRIMARY KEY NONCLUSTERED ([ScenarioKey] ASC) NOT ENFORCED;


GO