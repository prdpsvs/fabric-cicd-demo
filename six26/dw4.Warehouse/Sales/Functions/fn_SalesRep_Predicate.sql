-- ============================================
-- SECURITY PREDICATE FUNCTIONS
-- ============================================

-- Function 1: For Sales Representatives (see only their own orders)
CREATE FUNCTION [Sales].[fn_SalesRep_Predicate](@SalesPersonID AS sysname)
    RETURNS TABLE
    WITH SCHEMABINDING
    AS
    RETURN SELECT 1 AS fn_access
    WHERE 
        -- Sales rep sees only their own records
        @SalesPersonID = USER_NAME()
        -- Manager (DAVE001) sees North region (supervises Alice)
        OR USER_NAME() = 'DAVE001' AND @SalesPersonID IN ('ALICE001', 'DAVE001')
        -- Finance sees all
        OR USER_NAME() = 'EVE001'
        -- Executives see all
        OR USER_NAME() = 'FRANK001'
        -- Admin always sees all
        OR IS_MEMBER('db_owner') = 1

GO