CREATE TABLE [dbo].[AppUser] (
    [UserId] INT           NOT NULL,
    [Email]  VARCHAR (256) NOT NULL
);


GO

ALTER TABLE [dbo].[AppUser]
    ADD CONSTRAINT [UQ_AppUser_Email] UNIQUE NONCLUSTERED ([Email] ASC) NOT ENFORCED;


GO