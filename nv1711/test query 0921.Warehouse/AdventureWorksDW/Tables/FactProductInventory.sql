CREATE TABLE [AdventureWorksDW].[FactProductInventory] (
    [ProductKey]   INT             NOT NULL,
    [DateKey]      INT             NOT NULL,
    [MovementDate] DATE            NOT NULL,
    [UnitCost]     DECIMAL (18, 4) NOT NULL,
    [UnitsIn]      INT             NOT NULL,
    [UnitsOut]     INT             NOT NULL,
    [UnitsBalance] INT             NOT NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactProductInventory]
    ADD PRIMARY KEY NONCLUSTERED ([ProductKey] ASC, [DateKey] ASC) NOT ENFORCED;


GO