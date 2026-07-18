-- New in WH_C (aliased cross-WH ref)
CREATE VIEW dbo.vw_RegionFromA
AS SELECT r.RegionId, r.Name FROM [WH_A].[dbo].[Region] AS r;

GO