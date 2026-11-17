CREATE TABLE [dbo].[AspNetUserRoles] (
    [UserId] VARCHAR (256) NOT NULL,
    [RoleId] VARCHAR (256) NOT NULL
);


GO

ALTER TABLE [dbo].[AspNetUserRoles]
    ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[AspNetUserRoles]
    ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[AspNetUserRoles]
    ADD CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY NONCLUSTERED ([UserId] ASC, [RoleId] ASC) NOT ENFORCED;


GO