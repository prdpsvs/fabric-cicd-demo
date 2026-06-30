CREATE TABLE [sales].[Orders] (
    [OrderId]    INT             NOT NULL,
    [CustomerId] INT             NOT NULL,
    [OrderDate]  DATE            NOT NULL,
    [Total]      DECIMAL (18, 2) NOT NULL
);


GO