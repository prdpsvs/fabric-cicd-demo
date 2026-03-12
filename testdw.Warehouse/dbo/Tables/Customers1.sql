CREATE TABLE [dbo].[Customers1] (
    [Email] VARCHAR (256) MASKED WITH (FUNCTION = 'email()') NOT NULL
);


GO