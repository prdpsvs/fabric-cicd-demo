CREATE TABLE [Sales].[Orders] (
    [OrderID]         INT             NULL,
    [CustomerName]    VARCHAR (255)   NOT NULL,
    [Amount]          DECIMAL (10, 2) NOT NULL,
    [OrderDate]       DATE            NOT NULL,
    [SalesPersonID]   VARCHAR (100)   NOT NULL,
    [Region]          VARCHAR (100)   NOT NULL,
    [ProductCategory] VARCHAR (100)   NOT NULL
);


GO