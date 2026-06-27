CREATE PROCEDURE RegistrarCompra
@idMedioPago INT,
@idProveedor INT,
@total MONEY,
@idMercaderia INT,
@cantidad INT
AS
BEGIN
	BEGIN TRY

		INSERT INTO Compra (IdMedioPago, IdProveedor, Total)
		VALUES (@idMedioPago, @idProveedor, @total)

		DECLARE @idCompra INT
		
		SELECT @idCompra = MAX(Id) 
		FROM Compra 
		WHERE IdProveedor = @idProveedor

		INSERT INTO DetalleCompra (IdCompra, IdMercaderia, Cantidad)
		VALUES (@idCompra, @idMercaderia, @cantidad)

	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END;
GO
