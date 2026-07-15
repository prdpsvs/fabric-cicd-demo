CREATE SECURITY POLICY [Sales].[OrdersRLSPolicy]
    ADD FILTER PREDICATE [Sales].[fn_SalesRep_Predicate]([SalesPersonID]) ON [Sales].[Orders]
    WITH (STATE = ON);


GO