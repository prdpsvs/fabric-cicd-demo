CREATE TABLE [dbo].[Products] (

	[ProductID] int NOT NULL, 
	[ProductName] varchar(100) NOT NULL, 
	[Category] varchar(50) NOT NULL, 
	[UnitPrice] decimal(10,2) NOT NULL, 
	[StockQuantity] int NOT NULL, 
	[IsActive] bit NOT NULL
);