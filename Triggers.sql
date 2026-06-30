CREATE TRIGGER TR_RestarStock_Venta
ON DetalleVenta
AFTER INSERT AS
BEGIN
    SET NOCOUNT ON;
    UPDATE M
    SET M.Stock = M.Stock - I.Cantidad
    FROM Mercaderia M
    INNER JOIN inserted I ON M.Id = I.IdMercaderia;
END;
GO

CREATE TRIGGER TR_SumarStock_Compra
ON DetalleCompra
AFTER INSERT AS
BEGIN
    SET NOCOUNT ON;
    UPDATE M
    SET M.Stock = M.Stock + I.Cantidad
    FROM Mercaderia M
    INNER JOIN inserted I ON M.Id = I.IdMercaderia;
END;
GO

CREATE TRIGGER TR_Registrar_Movimiento
ON DetalleVenta
AFTER INSERT AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Inventario (Descripcion, IdMercaderia, Fecha, Stock)
    SELECT 'VENTA', I.IdMercaderia, GETDATE(), I.Cantidad
    FROM inserted I;
END;
GO

CREATE TRIGGER TR_ValidarStockMinimo
ON Mercaderia
AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM inserted WHERE Stock < 0)
    BEGIN
        PRINT ERROR_MESSAGE();
        ROLLBACK TRANSACTION;
    END
END;
GO
    
CREATE TRIGGER TR_CLIENTES_BAJA
ON Cliente
INSTEAD OF DELETE
AS
BEGIN
    UPDATE Cliente
    SET Baja = 1
    WHERE Cliente.Id = (SELECT id FROM deleted)M

END;
GO 


