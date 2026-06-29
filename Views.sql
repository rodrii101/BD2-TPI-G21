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
    ORDER BY C.Total DESC, CantidadTotalComprado DESC, C.Fecha DESC
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
    ORDER BY V.Total DESC, CantidadTotalVendido DESC, V.Fecha DESC
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
CREATE VIEW vista_productosMasVendidos
    AS
    SELECT TOP 20
    M.Id AS IdMercaderia,
    M.Descripcion AS ProductoNombre,
    MC.Descripcion AS Marca,
    CT.Descripcion AS Categoria,
    SUM(DV.Cantidad) AS CantidadTotalVendida 
    FROM DetalleVenta DV
    INNER JOIN Mercaderia M ON M.Id = DV.IdMercaderia
    INNER JOIN Marca MC ON MC.Id = M.IdMarca
    INNER JOIN Categorias CT ON CT.Id = M.IdCategorias
    GROUP BY M.Id, M.Descripcion, MC.Descripcion, CT.Descripcion
    ORDER BY CantidadTotalVendida DESC
GO
