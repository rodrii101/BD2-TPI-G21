CREATE PROCEDURE StockArticulo

@idArticulo INT

AS
BEGIN
	BEGIN TRY

SELECT M.CodMercaderia, M.Descripcion, M.Stock, (SELECT MAX(COM.Fecha)) AS 'Ultima Compra' FROM Mercaderia M 
INNER JOIN DetalleCompra DC ON DC.IdMercaderia = M.Id
INNER JOIN Compra COM ON DC.IdCompra = COM.Id
WHERE M.Id = 1
GROUP BY M.CodMercaderia, M.Descripcion, M.Stock


	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END;