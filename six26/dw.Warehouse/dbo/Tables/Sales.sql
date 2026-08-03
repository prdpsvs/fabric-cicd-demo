CREATE TABLE [dbo].[Sales] (
    [SaleId]       INT             NOT NULL,
    [CustomerId]   INT             NOT NULL,
    [Amount]       DECIMAL (18, 2) NOT NULL,
    [SaleDate]     DATE            NOT NULL,
    [Sales_Region] VARCHAR (100)   NULL
);


GO