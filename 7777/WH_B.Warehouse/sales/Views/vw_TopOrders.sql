CREATE VIEW sales.vw_TopOrders
AS
SELECT TOP (100) o.OrderId, o.CustomerId, o.Total
FROM sales.Orders AS o
ORDER BY o.Total DESC;

GO