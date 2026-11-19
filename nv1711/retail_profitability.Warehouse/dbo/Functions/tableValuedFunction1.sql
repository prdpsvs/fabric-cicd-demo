CREATE FUNCTION [dbo].[tableValuedFunction1] (
	@Parameter1 INT,
	@Parameter2 INT
)
RETURNS TABLE AS RETURN (
	SELECT @parameter1 + @parameter2
	AS RESULT
)

GO