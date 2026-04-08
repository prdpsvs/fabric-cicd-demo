CREATE TABLE [dbo].[Customers] (

	[CustomerID] int NOT NULL, 
	[FirstName] varchar(50) NOT NULL, 
	[LastName] varchar(50) NOT NULL, 
	[Email] varchar(255) NULL, 
	[Phone] varchar(20) NULL, 
	[Address] varchar(100) NULL, 
	[JoinDate] date NOT NULL
);


GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT PK_Customers_CustomerID primary key NONCLUSTERED ([CustomerID]);