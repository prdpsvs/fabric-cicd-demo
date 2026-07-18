CREATE TABLE [dbo].[Customer] (
    [CustomerId] INT           NOT NULL,
    [FirstName]  VARCHAR (100) NOT NULL,
    [LastName]   VARCHAR (100) NOT NULL,
    [Email]      VARCHAR (256) NULL,
    [LastName_2] VARCHAR (100) NULL
);


GO

ALTER TABLE [dbo].[Customer]
    ADD CONSTRAINT [PK_Customer] PRIMARY KEY NONCLUSTERED ([CustomerId] ASC) NOT ENFORCED;


GO