CREATE TABLE [dbo].[Customers] (
    [Email] VARCHAR (256) MASKED WITH (FUNCTION = 'email()') NOT NULL
);


GO