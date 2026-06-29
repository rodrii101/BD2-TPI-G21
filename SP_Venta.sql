CREATE PROCEDURE SP_RegistrarVenta
    @IdCarrito INT,
    @IdMedioPago INT,
    @IdMercaderia INT,
    @Cantidad INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @IdVenta INT;
        DECLARE @PrecioUnitario FLOAT;
        DECLARE @TotalVenta MONEY;

        SELECT @PrecioUnitario = PrecioUnitario FROM Mercaderia WHERE Id = @IdMercaderia;
        SET @TotalVenta = (@Cantidad * @PrecioUnitario);

        INSERT INTO Venta (IdCarrito, IdMedioPago, Fecha, Total)
        VALUES (@IdCarrito, @IdMedioPago, GETDATE(), @TotalVenta);
        
        SET @IdVenta = SCOPE_IDENTITY(); 

        INSERT INTO DetalleVenta (IdVenta, IdMercaderia, Cantidad, PrecioUnitario, Fecha)
        VALUES (@IdVenta, @IdMercaderia, @Cantidad, @PrecioUnitario, GETDATE());

        COMMIT TRANSACTION;
        PRINT 'Alta de Venta registrada con éxito. Comprobante Nro: ' + CAST(@IdVenta AS VARCHAR);
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        RAISERROR('Error crítico al procesar la venta: %s', 16, 1, ERROR_MESSAGE());
    END CATCH
END;
GO
