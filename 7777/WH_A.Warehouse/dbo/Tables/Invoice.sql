CREATE TABLE [dbo].[Invoice]
(
    [InvoiceId]   INT             NOT NULL,
    [CustomerId]  INT             NOT NULL,
    [IssuedOn]    DATE            NOT NULL,
    [Amount]      DECIMAL(18,2)   NOT NULL,
    [Currency]    VARCHAR(3)      NULL
);
