CREATE TABLE [dbo].[Orders] (
    [OrderID]     INT             NOT NULL,
    [CustomerID]  INT             NOT NULL,
    [OrderDate]   DATETIME2 (6)   NOT NULL,
    [ShippedDate] DATETIME2 (6)   NULL,
    [TotalAmount] DECIMAL (12, 2) NOT NULL,
    [ROW_ID]      BIGINT          NOT NULL
);


GO

ALTER TABLE [dbo].[Orders]
    ADD CONSTRAINT [PK_Orders] PRIMARY KEY NONCLUSTERED ([OrderID] ASC) NOT ENFORCED;


GO