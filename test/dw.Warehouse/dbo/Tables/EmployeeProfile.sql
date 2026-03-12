CREATE TABLE [dbo].[EmployeeProfile] (
    [BirthDate] DATE MASKED WITH (FUNCTION = 'datetime("Y")') NULL
);


GO