CREATE PROCEDURE RegistrarCompra
    @idMedioPago INT,
    @idProveedor INT,
    @total MONEY,
    @idMercaderia INT,
    @cantidad INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Compra (IdMedioPago, IdProveedor, Total)
        VALUES (@idMedioPago, @idProveedor, @total);

        DECLARE @idCompra INT = SCOPE_IDENTITY();

        INSERT INTO DetalleCompra (IdCompra, IdMercaderia, Cantidad)
        VALUES (@idCompra, @idMercaderia, @cantidad);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        PRINT ERROR_MESSAGE();
    END CATCH
END;
GO
