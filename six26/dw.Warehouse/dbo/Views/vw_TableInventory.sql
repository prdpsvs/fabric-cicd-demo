CREATE VIEW dbo.vw_TableInventory
AS
SELECT
    s.name  AS schema_name,
    t.name  AS table_name,
    c.name  AS column_name,
    c.collation_name
FROM sys.tables   t
JOIN sys.schemas  s ON s.schema_id = t.schema_id
JOIN sys.columns  c ON c.object_id = t.object_id;

GO