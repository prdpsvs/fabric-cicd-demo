CREATE TABLE [dbo].[Orders] (

	[OrderID] int NOT NULL, 
	[CustomerID] int NOT NULL, 
	[OrderDate] datetime2(6) NOT NULL, 
	[ShippedDate] datetime2(6) NULL, 
	[TotalAmount] decimal(12,2) NOT NULL, 
	[ROW_ID] bigint NOT NULL
);


GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT PK_Orders primary key NONCLUSTERED ([OrderID]);