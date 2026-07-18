CREATE TABLE [dbo].[OrderLine] (
    [OrderId] INT          NOT NULL,
    [LineNo]  INT          NOT NULL,
    [Sku]     VARCHAR (64) NOT NULL,
    [Qty]     INT          NOT NULL
);


GO

ALTER TABLE [dbo].[OrderLine]
    ADD CONSTRAINT [PK_OrderLine] PRIMARY KEY NONCLUSTERED ([OrderId] ASC, [LineNo] ASC, [Sku] ASC) NOT ENFORCED;


GO