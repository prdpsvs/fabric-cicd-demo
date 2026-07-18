CREATE TABLE [dbo].[ProductCat] (
    [ProductId]  INT NOT NULL,
    [CategoryId] INT NOT NULL
);


GO

ALTER TABLE [dbo].[ProductCat]
    ADD CONSTRAINT [FK_ProductCat_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([CategoryId]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[ProductCat]
    ADD CONSTRAINT [PK_ProductCat] PRIMARY KEY NONCLUSTERED ([ProductId] ASC) NOT ENFORCED;


GO