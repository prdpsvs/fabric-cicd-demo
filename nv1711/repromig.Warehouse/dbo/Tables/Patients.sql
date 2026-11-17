CREATE TABLE [dbo].[Patients] (
    [PatientID]     BIGINT                                                         IDENTITY NOT NULL,
    [SSN]           CHAR (11)                                                      NOT NULL,
    [FirstName]     VARCHAR (100)                                                  NULL,
    [LastName]      VARCHAR (100) MASKED WITH (FUNCTION = 'partial(1, "xxxx", 0)') NOT NULL,
    [MiddleName]    VARCHAR (100) MASKED WITH (FUNCTION = 'default()')             NULL,
    [StreetAddress] VARCHAR (100) MASKED WITH (FUNCTION = 'default()')             NOT NULL,
    [City]          VARCHAR (100)                                                  NOT NULL,
    [ZipCode]       CHAR (5) MASKED WITH (FUNCTION = 'default()')                  NOT NULL,
    [State]         CHAR (2)                                                       NOT NULL,
    [BirthDate]     DATE                                                           NOT NULL
);


GO

ALTER TABLE [dbo].[Patients]
    ADD CONSTRAINT [PK_dbo.Patients] PRIMARY KEY NONCLUSTERED ([PatientID] ASC) NOT ENFORCED;


GO