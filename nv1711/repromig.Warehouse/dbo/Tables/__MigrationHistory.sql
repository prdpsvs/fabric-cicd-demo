CREATE TABLE [dbo].[__MigrationHistory] (
    [MigrationId]    VARCHAR (300)   NOT NULL,
    [ContextKey]     VARCHAR (600)   NOT NULL,
    [Model]          VARBINARY (MAX) NOT NULL,
    [ProductVersion] VARCHAR (64)    NOT NULL
);


GO

ALTER TABLE [dbo].[__MigrationHistory]
    ADD CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY NONCLUSTERED ([MigrationId] ASC, [ContextKey] ASC) NOT ENFORCED;


GO