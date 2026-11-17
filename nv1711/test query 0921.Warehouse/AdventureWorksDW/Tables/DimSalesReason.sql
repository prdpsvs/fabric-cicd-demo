CREATE TABLE [AdventureWorksDW].[DimSalesReason] (
    [SalesReasonKey]          INT          NOT NULL,
    [SalesReasonAlternateKey] INT          NOT NULL,
    [SalesReasonName]         VARCHAR (50) NOT NULL,
    [SalesReasonReasonType]   VARCHAR (50) NOT NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimSalesReason]
    ADD PRIMARY KEY NONCLUSTERED ([SalesReasonKey] ASC) NOT ENFORCED;


GO