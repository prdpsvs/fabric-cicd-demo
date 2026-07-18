CREATE TABLE [dbo].[Product] (
    [ProductId] INT           NOT NULL,
    [Name]      VARCHAR (200) NOT NULL
);


GO

ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [PK_Product] PRIMARY KEY NONCLUSTERED ([ProductId] ASC) NOT ENFORCED;


GO