CREATE PROCEDURE RegistrarCompra
    @idMedioPago INT,
    @idProveedor INT,
    @idMercaderia INT,
    @cantidad INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;
        
        DECLARE @idCompra INT;
        DECLARE @PrecioUnitario FLOAT;
        DECLARE @TotalCompra MONEY;
        
        SELECT @PrecioUnitario = PrecioUnitario FROM Mercaderia WHERE Id = @idMercaderia 

        SET @TotalCompra = (@Cantidad * @PrecioUnitario);

        INSERT INTO Compra (IdMedioPago, IdProveedor, Total)
        VALUES (@idMedioPago, @idProveedor, @TotalCompra);

        SET @idCompra = SCOPE_IDENTITY();

        INSERT INTO DetalleCompra (IdCompra, IdMercaderia,PrecioUnitario, Cantidad)
        VALUES (@idCompra, @idMercaderia,@PrecioUnitario ,@cantidad);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        PRINT ERROR_MESSAGE();
    END CATCH
END;
GO
