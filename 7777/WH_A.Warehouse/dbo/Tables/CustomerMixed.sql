CREATE TABLE [dbo].[CustomerMixed] (
    [CustomerId]  INT           NOT NULL,
    [FirstName]   VARCHAR (100) NOT NULL,
    [LastNameBin] VARCHAR (100) NOT NULL,
    [Email]       VARCHAR (256) COLLATE Latin1_General_100_CI_AS_KS_WS_SC_UTF8 NULL
);


GO