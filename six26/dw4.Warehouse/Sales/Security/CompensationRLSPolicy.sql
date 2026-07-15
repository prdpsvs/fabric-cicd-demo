CREATE SECURITY POLICY [Sales].[CompensationRLSPolicy]
    ADD FILTER PREDICATE [Sales].[fn_Compensation_Predicate]([SalesPersonID]) ON [Sales].[CompensationDetails]
    WITH (STATE = ON);


GO