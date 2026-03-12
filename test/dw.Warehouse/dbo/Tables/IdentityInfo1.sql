CREATE TABLE [dbo].[IdentityInfo1] (
    [SSN] CHAR (11) MASKED WITH (FUNCTION = 'partial(0, "XXX-XX-", 4)') NULL
);


GO