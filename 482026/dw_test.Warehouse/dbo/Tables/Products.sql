CREATE TABLE [dbo].[Products] (
    [ProductID]    INT             NOT NULL,
    [ProductName]  VARCHAR (100)   NOT NULL,
    [CategoryID]   INT             NULL,
    [UnitPrice]    DECIMAL (10, 2) NOT NULL,
    [UnitsInStock] INT             NOT NULL
);


GO

ALTER TABLE [dbo].[Products]
    ADD CONSTRAINT [PK_Products] PRIMARY KEY NONCLUSTERED ([ProductID] ASC) NOT ENFORCED;


GO