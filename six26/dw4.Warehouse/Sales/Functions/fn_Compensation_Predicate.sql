-- Function 3: Compensation data (executives and self only)
CREATE FUNCTION [Sales].[fn_Compensation_Predicate](@SalesPersonID AS sysname)
    RETURNS TABLE
    WITH SCHEMABINDING
    AS
    RETURN SELECT 1 AS fn_access
    WHERE 
        -- Employees see only their own compensation
        @SalesPersonID = USER_NAME()
        -- Finance and HR can see all
        OR USER_NAME() IN ('EVE001', 'DAVE001')
        -- Executives can see all
        OR USER_NAME() = 'FRANK001'
        -- Admins see all
        OR IS_MEMBER('db_owner') = 1

GO