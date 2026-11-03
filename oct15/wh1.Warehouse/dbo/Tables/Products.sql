CREATE TABLE [dbo].[Products] (
    [ProductId]   INT             NOT NULL,
    [ProductName] VARCHAR (200)   NOT NULL,
    [Category]    VARCHAR (100)   NULL,
    [UnitPrice]   DECIMAL (18, 2) NOT NULL,
    [IsActive]    BIT             NOT NULL
);


GO