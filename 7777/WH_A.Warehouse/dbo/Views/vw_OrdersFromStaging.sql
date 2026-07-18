CREATE VIEW dbo.vw_OrdersFromStaging
AS
SELECT s.OrderId, r.Payload, s.Total
FROM [WH_A].[sales].[Orders]      s
JOIN [WH_A].[staging].[RawOrders] r ON r.RawId = s.RawId;

GO