CREATE TABLE [dbo].[Customers] (
    [CustomerID] INT           NOT NULL,
    [FirstName]  VARCHAR (50)  NOT NULL,
    [LastName]   VARCHAR (50)  NOT NULL,
    [Email]      VARCHAR (255) NULL,
    [Phone]      VARCHAR (20)  NULL,
    [Address]    VARCHAR (100) NULL,
    [JoinDate]   DATE          NOT NULL
);


GO

ALTER TABLE [dbo].[Customers]
    ADD CONSTRAINT [PK_Customers_CustomerID] PRIMARY KEY NONCLUSTERED ([CustomerID] ASC) NOT ENFORCED;


GO