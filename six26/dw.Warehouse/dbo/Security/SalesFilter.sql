CREATE SECURITY POLICY [dbo].[SalesFilter]
    ADD FILTER PREDICATE [Security].[tvf_securitypredicate]([CustomerId]) ON [dbo].[Sales]
    WITH (STATE = ON);


GO