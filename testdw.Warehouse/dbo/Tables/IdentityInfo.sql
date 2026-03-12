CREATE TABLE [dbo].[IdentityInfo] (
    [SSN] CHAR (11) MASKED WITH (FUNCTION = 'partial(0, "XXX-XX-", 4)') NULL
);


GO