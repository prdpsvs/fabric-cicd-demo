CREATE TABLE [dbo].[Products] (

	[ProductID] int NOT NULL, 
	[ProductName] varchar(100) NOT NULL, 
	[CategoryID] int NULL, 
	[UnitPrice] decimal(10,2) NOT NULL, 
	[UnitsInStock] int NOT NULL
);


GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT PK_Products primary key NONCLUSTERED ([ProductID]);