CREATE FUNCTION [dbo].[DateRange] (
    @Interval  int = 1
)
RETURNS TABLE AS RETURN
SELECT CAST(@Interval AS INT) * 1 AS X
UNION ALL
SELECT CAST(@Interval AS INT) * 1 AS X;

GO