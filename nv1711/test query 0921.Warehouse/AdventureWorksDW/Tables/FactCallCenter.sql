CREATE TABLE [AdventureWorksDW].[FactCallCenter] (
    [FactCallCenterID]    INT          NOT NULL,
    [DateKey]             INT          NOT NULL,
    [WageType]            VARCHAR (30) NOT NULL,
    [Shift]               VARCHAR (40) NOT NULL,
    [LevelOneOperators]   SMALLINT     NOT NULL,
    [LevelTwoOperators]   SMALLINT     NOT NULL,
    [TotalOperators]      SMALLINT     NOT NULL,
    [Calls]               INT          NOT NULL,
    [AutomaticResponses]  INT          NOT NULL,
    [Orders]              INT          NOT NULL,
    [IssuesRaised]        SMALLINT     NOT NULL,
    [AverageTimePerIssue] SMALLINT     NOT NULL,
    [ServiceGrade]        NUMERIC (18) NOT NULL,
    [Date]                DATE         NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactCallCenter]
    ADD CONSTRAINT [FK_FactCallCenter_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [AdventureWorksDW].[DimDate] ([DateKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[FactCallCenter]
    ADD PRIMARY KEY NONCLUSTERED ([FactCallCenterID] ASC) NOT ENFORCED;


GO