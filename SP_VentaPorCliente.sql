CREATE PROCEDURE InfoVentaPorCliente

@idCliente INT

AS
BEGIN
	BEGIN TRY
	SELECT cli.Nombre,V.Fecha,mer.Descripcion,VD.Cantidad  FROM Cliente cli
	INNER JOIN Carrito CAR ON CAR.IdCliente = CLI.Id
	INNER JOIN Venta V ON V.IDCarrito = CAR.Id
	INNER JOIN DetalleVenta VD ON VD.IdVenta = V.ID
	INNER JOIN Mercaderia mer ON mer.Id = VD.IdMercaderia
	WHERE cli.Id = @idCliente


	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END;