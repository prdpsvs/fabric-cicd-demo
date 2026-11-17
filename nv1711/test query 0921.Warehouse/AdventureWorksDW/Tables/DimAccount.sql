CREATE TABLE [AdventureWorksDW].[DimAccount] (
    [AccountKey]                    INT           NOT NULL,
    [ParentAccountKey]              INT           NULL,
    [AccountCodeAlternateKey]       INT           NULL,
    [ParentAccountCodeAlternateKey] INT           NULL,
    [AccountDescription]            VARCHAR (50)  NOT NULL,
    [AccountType]                   VARCHAR (50)  NULL,
    [Operator]                      VARCHAR (50)  NULL,
    [CustomMembers]                 VARCHAR (300) NULL,
    [ValueType]                     VARCHAR (50)  NULL,
    [CustomMemberOptions]           VARCHAR (200) NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimAccount]
    ADD CONSTRAINT [FK_DimAccount_DimAccount] FOREIGN KEY ([ParentAccountKey]) REFERENCES [AdventureWorksDW].[DimAccount] ([AccountKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimAccount]
    ADD PRIMARY KEY NONCLUSTERED ([AccountKey] ASC) NOT ENFORCED;


GO