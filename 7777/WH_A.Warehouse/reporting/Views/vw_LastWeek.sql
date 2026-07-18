CREATE VIEW reporting.vw_LastWeek
AS
SELECT k.KpiDate, k.Revenue
FROM reporting.DailyKpi AS k
WHERE k.KpiDate >= DATEADD(day, -7, CAST(GETDATE() AS DATE));

GO