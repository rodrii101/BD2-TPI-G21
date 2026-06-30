INSERT INTO Carrito (IdCliente, Estado, Fecha)
VALUES (1, 1, GETDATE());

DECLARE @IdCarritoPrueba INT = SCOPE_IDENTITY();

EXEC SP_RegistrarVenta 
    @IdCarrito = @IdCarritoPrueba, 
    @IdMedioPago = 1, 
    @IdMercaderia = 1, 
    @Cantidad = 5;

DECLARE @IdVentaPrueba INT;
SELECT @IdVentaPrueba = MAX(Id) FROM Venta;

INSERT INTO RemitoResumen (SucRem, NroRemito, IdTransporte, Fecha, IdVenta, IdSeguimiento)
VALUES ('SUC-PACHECO', 'REM-00001234', 1, GETDATE(), @IdVentaPrueba, 1);

DECLARE @IdRemitoPrueba INT = SCOPE_IDENTITY();

INSERT INTO RemitoDetalle (IdRemito, IdMercaderia, Cantidad)
VALUES (@IdRemitoPrueba, 1, 5);

SELECT * FROM Carrito;
SELECT * FROM Venta;
SELECT * FROM DetalleVenta;
SELECT * FROM RemitoResumen;
SELECT * FROM RemitoDetalle;
SELECT * FROM Inventario;
