CREATE TABLE [dbo].[Dim_ProductOrders]
(
  ProductOrderKey INT NOT NULL,
  OrderNumber VARCHAR(50) NOT NULL,
  ProductKey INT NOT NULL,
  OrderDateKey INT NOT NULL,
  Quantity INT NOT NULL,
  UnitPrice DECIMAL(18, 2) NOT NULL
)
