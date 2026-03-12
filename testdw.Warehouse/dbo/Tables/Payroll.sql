CREATE TABLE [dbo].[Payroll] (
    [Salary]   REAL MASKED WITH (FUNCTION = 'default()')    NULL,
    [BonusPct] INT MASKED WITH (FUNCTION = 'random(5, 20)') NULL
);


GO