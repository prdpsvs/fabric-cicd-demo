CREATE TABLE [dbo].[Category] (
    [CategoryId] INT           NOT NULL,
    [Name]       VARCHAR (100) NOT NULL
);


GO

ALTER TABLE [dbo].[Category]
    ADD CONSTRAINT [PK_Category] PRIMARY KEY NONCLUSTERED ([CategoryId] ASC) NOT ENFORCED;


GO