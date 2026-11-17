--Auto fix: Convert column datatype NVarChar to VarChar. Originally in line 13, column 63.

-- Create predicate function for RLS
-- This determines which users can access which rows
CREATE FUNCTION Security.patientAccessPredicate
(@PatientID INT)
RETURNS TABLE 
WITH SCHEMABINDING
AS
RETURN 
    SELECT 1 AS isAccessible
    FROM   dbo.ApplicationUserPatients
    WHERE  (-- application users can access only patients assigned to them
           Patient_PatientID = @PatientID
           AND ApplicationUser_Id = CAST (SESSION_CONTEXT(N'UserId') AS VARCHAR (256)))
           OR (-- DBAs can access all patients
           IS_MEMBER('db_owner') = 1)

GO