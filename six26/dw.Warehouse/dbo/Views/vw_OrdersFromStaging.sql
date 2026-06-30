CREATE VIEW dbo.vw_OrdersFromStaging
AS
SELECT s.OrderId, r.Payload, s.Total
FROM [dw].[sales].[Orders_1]      s
JOIN [dw].[staging].[RawOrders] r ON r.RawId = s.RawId;

GO