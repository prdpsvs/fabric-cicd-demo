CREATE TABLE [AdventureWorksDW].[FactSalesQuota] (
    [SalesQuotaKey]    INT             NOT NULL,
    [EmployeeKey]      INT             NOT NULL,
    [DateKey]          INT             NOT NULL,
    [CalendarYear]     SMALLINT        NOT NULL,
    [CalendarQuarter]  SMALLINT        NOT NULL,
    [SalesAmountQuota] DECIMAL (18, 4) NOT NULL,
    [Date]             DATE            NULL
);


GO

ALTER TABLE [AdventureWorksDW].[FactSalesQuota]
    ADD PRIMARY KEY NONCLUSTERED ([SalesQuotaKey] ASC) NOT ENFORCED;


GO