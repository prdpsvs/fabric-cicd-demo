-- Function 2: Region-based access for Reports
CREATE FUNCTION [Sales].[fn_Region_Predicate](@Region AS VARCHAR(100))
    RETURNS TABLE
    WITH SCHEMABINDING
    AS
    RETURN SELECT 1 AS fn_access
    WHERE 
        -- Alice sees North region
        (USER_NAME() = 'ALICE001' AND @Region = 'North')
        OR
        -- Bob sees South region
        (USER_NAME() = 'BOB001' AND @Region = 'South')
        OR
        -- Carol sees East region
        (USER_NAME() = 'CAROL001' AND @Region = 'East')
        OR
        -- Managers see multiple regions
        (USER_NAME() = 'DAVE001' AND @Region IN ('North', 'South'))
        OR
        -- Finance and Executives see all regions
        USER_NAME() IN ('EVE001', 'FRANK001')
        OR
        -- Admins see all
        IS_MEMBER('db_owner') = 1

GO