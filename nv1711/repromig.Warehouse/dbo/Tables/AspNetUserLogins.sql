CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] VARCHAR (256) NOT NULL,
    [ProviderKey]   VARCHAR (256) NOT NULL,
    [UserId]        VARCHAR (256) NOT NULL
);


GO

ALTER TABLE [dbo].[AspNetUserLogins]
    ADD CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[AspNetUserLogins]
    ADD CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY NONCLUSTERED ([LoginProvider] ASC, [ProviderKey] ASC, [UserId] ASC) NOT ENFORCED;


GO