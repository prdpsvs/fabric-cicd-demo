CREATE TABLE [AdventureWorksDW].[DimEmployee] (
    [EmployeeKey]                    INT             NOT NULL,
    [ParentEmployeeKey]              INT             NULL,
    [EmployeeNationalIDAlternateKey] VARCHAR (15)    NULL,
    [ParentEmployeeNationalIDAltKey] VARCHAR (15)    NULL,
    [SalesTerritoryKey]              INT             NULL,
    [FirstName]                      VARCHAR (100)   NOT NULL,
    [LastName]                       VARCHAR (100)   NOT NULL,
    [MiddleName]                     VARCHAR (100)   NULL,
    [NameStyle]                      SMALLINT        NOT NULL,
    [Title]                          VARCHAR (100)   NULL,
    [HireDate]                       DATE            NULL,
    [BirthDate]                      DATE            NULL,
    [LoginID]                        VARCHAR (512)   NULL,
    [EmailAddress]                   VARCHAR (100)   NULL,
    [Phone]                          VARCHAR (50)    NULL,
    [MaritalStatus]                  CHAR (1)        NULL,
    [EmergencyContactName]           VARCHAR (100)   NULL,
    [EmergencyContactPhone]          VARCHAR (25)    NULL,
    [SalariedFlag]                   SMALLINT        NULL,
    [Gender]                         CHAR (1)        NULL,
    [PayFrequency]                   SMALLINT        NULL,
    [BaseRate]                       DECIMAL (18, 4) NULL,
    [VacationHours]                  SMALLINT        NULL,
    [SickLeaveHours]                 SMALLINT        NULL,
    [CurrentFlag]                    SMALLINT        NOT NULL,
    [SalesPersonFlag]                SMALLINT        NOT NULL,
    [DepartmentName]                 VARCHAR (50)    NULL,
    [StartDate]                      DATE            NULL,
    [EndDate]                        DATE            NULL,
    [Status]                         VARCHAR (100)   NULL,
    [EmployeePhoto]                  VARBINARY (MAX) NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimEmployee]
    ADD CONSTRAINT [FK_DimEmployee_DimEmployee] FOREIGN KEY ([ParentEmployeeKey]) REFERENCES [AdventureWorksDW].[DimEmployee] ([EmployeeKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimEmployee]
    ADD CONSTRAINT [FK_DimEmployee_DimSalesTerritory] FOREIGN KEY ([SalesTerritoryKey]) REFERENCES [AdventureWorksDW].[DimSalesTerritory] ([SalesTerritoryKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimEmployee]
    ADD PRIMARY KEY NONCLUSTERED ([EmployeeKey] ASC) NOT ENFORCED;


GO