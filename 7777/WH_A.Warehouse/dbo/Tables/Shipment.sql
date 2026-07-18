CREATE TABLE dbo.Shipment
(
    ShipmentId  INT          NOT NULL,
    OrderId     INT          NOT NULL,
    ShippedOn   DATE         NOT NULL,
    Carrier     VARCHAR(50)  NOT NULL
);

GO
