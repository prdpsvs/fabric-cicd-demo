CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   VARCHAR (256) NOT NULL,
    [Email]                VARCHAR (512) NULL,
    [EmailConfirmed]       BIT           NOT NULL,
    [PasswordHash]         VARCHAR (MAX) NULL,
    [SecurityStamp]        VARCHAR (MAX) NULL,
    [PhoneNumber]          VARCHAR (MAX) NULL,
    [PhoneNumberConfirmed] BIT           NOT NULL,
    [TwoFactorEnabled]     BIT           NOT NULL,
    [LockoutEndDateUtc]    DATETIME2 (6) NULL,
    [LockoutEnabled]       BIT           NOT NULL,
    [AccessFailedCount]    INT           NOT NULL,
    [UserName]             VARCHAR (512) NOT NULL
);


GO

ALTER TABLE [dbo].[AspNetUsers]
    ADD CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY NONCLUSTERED ([Id] ASC) NOT ENFORCED;


GO