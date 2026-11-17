CREATE TABLE [AdventureWorksDW].[DimDepartmentGroup] (
    [DepartmentGroupKey]       INT          NOT NULL,
    [ParentDepartmentGroupKey] INT          NULL,
    [DepartmentGroupName]      VARCHAR (50) NULL
);


GO

ALTER TABLE [AdventureWorksDW].[DimDepartmentGroup]
    ADD CONSTRAINT [FK_DimDepartmentGroup_DimDepartmentGroup] FOREIGN KEY ([ParentDepartmentGroupKey]) REFERENCES [AdventureWorksDW].[DimDepartmentGroup] ([DepartmentGroupKey]) NOT ENFORCED;


GO

ALTER TABLE [AdventureWorksDW].[DimDepartmentGroup]
    ADD PRIMARY KEY NONCLUSTERED ([DepartmentGroupKey] ASC) NOT ENFORCED;


GO