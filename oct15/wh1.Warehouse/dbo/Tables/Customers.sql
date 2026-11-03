CREATE TABLE [dbo].[Customers] (
    [CustomerId]   INT           NOT NULL,
    [CustomerName] VARCHAR (200) NOT NULL,
    [Region]       VARCHAR (50)  NULL,
    [CustomerTier] VARCHAR (20)  NULL,
    [CreatedDate]  DATE          NOT NULL
);


GO