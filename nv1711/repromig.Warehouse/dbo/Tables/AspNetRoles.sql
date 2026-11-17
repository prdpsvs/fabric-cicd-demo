CREATE TABLE [dbo].[AspNetRoles] (
    [Id]   VARCHAR (256) NOT NULL,
    [Name] VARCHAR (512) NOT NULL
);


GO

ALTER TABLE [dbo].[AspNetRoles]
    ADD CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY NONCLUSTERED ([Id] ASC) NOT ENFORCED;


GO