CREATE VIEW vista_topCompras
    AS
    SELECT TOP 50 
    C.Id,
    C.IdProveedor,
    SUM(DC.Cantidad) AS CantidadTotalComprado,
    C.Total,
    C.Fecha
    FROM Compra C 
    INNER JOIN DetalleCompra DC ON DC.IdCompra = C.Id
    GROUP BY C.Id, C.IdProveedor, C.Fecha, C.Total
    ORDER BY C.Total DESC, SUM(DC.Cantidad) DESC, C.Fecha DESC
GO
CREATE VIEW vista_topVentas
    AS
    SELECT TOP 50
    V.Id AS 'Id Venta',
    V.IdMedioPago  AS MedioDePago,
    SUM(DV.Cantidad) AS CantidadTotalVendido,
    V.Fecha,
    V.Total
    FROM Venta V
    INNER JOIN DetalleVenta DV ON DV.IdVenta = V.Id
    GROUP BY V.Id, V.Fecha, V.IdMedioPago, V.Total
    ORDER BY V.Total DESC, SUM(DV.Cantidad) DESC, V.Fecha DESC
GO

CREATE VIEW vista_stockBajoMercaderia
    AS
    SELECT TOP 100 Id AS 
    IdMercaderia, 
    Descripcion, 
    Stock 
    FROM Mercaderia
    ORDER BY Stock ASC
GO
    