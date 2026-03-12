CREATE TABLE [dbo].[Products] (
    [ProductID]     INT             NOT NULL,
    [ProductName]   VARCHAR (100)   NOT NULL,
    [Category]      VARCHAR (50)    NOT NULL,
    [UnitPrice]     DECIMAL (10, 2) NOT NULL,
    [StockQuantity] INT             NOT NULL,
    [IsActive]      BIT             NOT NULL
);


GO