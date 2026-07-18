

-- Auto-fix: OBJECT_ID returns NULL if the object does not exist.
-- Original code created the table only when OBJECT_ID(...) IS NOT NULL (i.e., when it already existed),
-- which was logically inverted and caused "Invalid column name 'dbo.Deployment'" when referenced later.
-- Correct logic: create table when it does NOT exist.
IF OBJECT_ID('dbo.Deployment') IS NULL
BEGIN
    CREATE TABLE dbo.Deployment (id INT NULL); -- Auto-fix: Created table in dbo schema with column [id].
END

IF OBJECT_ID('dbo.Deployment') IS NOT NULL
BEGIN
    IF NOT EXISTS (SELECT 1 FROM dbo.Deployment) -- Auto-fix: Now valid because table definitely exists.
        INSERT INTO dbo.Deployment (id)
        VALUES (1);
END

