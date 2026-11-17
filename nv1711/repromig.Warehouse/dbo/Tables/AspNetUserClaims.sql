CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id]         BIGINT        IDENTITY NOT NULL,
    [UserId]     VARCHAR (256) NOT NULL,
    [ClaimType]  VARCHAR (MAX) NULL,
    [ClaimValue] VARCHAR (MAX) NULL
);


GO

ALTER TABLE [dbo].[AspNetUserClaims]
    ADD CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) NOT ENFORCED;


GO

ALTER TABLE [dbo].[AspNetUserClaims]
    ADD CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY NONCLUSTERED ([Id] ASC) NOT ENFORCED;


GO