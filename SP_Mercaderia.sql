CREATE PROCEDURE RegistrarMercaderia
    @Descripcion VARCHAR(100),
    @IdCategoria INT,
    @IdProveedor INT,
    @IdMarca INT,
    @CodMercaderia VARCHAR(50),
    @Stock INT,
    @PrecioUnitario FLOAT
AS
BEGIN
    BEGIN TRY

        INSERT INTO Mercaderia
        (
            Descripcion,
            IdCategoria,
            IdProveedor,
            IdMarca,
            CodMercaderia,
            Stock,
            PrecioUnitario
        )
        VALUES
        (
            @Descripcion,
            @IdCategoria,
            @IdProveedor,
            @IdMarca,
            @CodMercaderia,
            @Stock,
            @PrecioUnitario
        )

    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE()
    END CATCH
END;
GO


CREATE PROCEDURE ModificarMercaderia
    @Id INT,
    @Descripcion VARCHAR(100),
    @IdCategoria INT,
    @IdProveedor INT,
    @IdMarca INT,
    @CodMercaderia VARCHAR(50),
    @Stock INT,
    @PrecioUnitario FLOAT
AS
BEGIN
    BEGIN TRY

        UPDATE Mercaderia
        SET
            Descripcion = @Descripcion,
            IdCategoria = @IdCategoria,
            IdProveedor = @IdProveedor,
            IdMarca = @IdMarca,
            CodMercaderia = @CodMercaderia,
            Stock = @Stock,
            PrecioUnitario = @PrecioUnitario
        WHERE Id = @Id

    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE()
    END CATCH
END;
GO


CREATE PROCEDURE EliminarMercaderia
    @Id INT
AS
BEGIN
    BEGIN TRY

        DELETE FROM Mercaderia
        WHERE Id = @Id

    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE()
    END CATCH
END;
GO


CREATE PROCEDURE ListarMercaderia
AS
BEGIN
    BEGIN TRY

        SELECT
            M.Id,
            M.Descripcion,
            C.Descripcion AS Categoria,
            P.RazonSocial AS Proveedor,
            MA.Descripcion AS Marca,
            M.CodMercaderia,
            M.Stock,
            M.PrecioUnitario
        FROM Mercaderia M
        INNER JOIN Categorias C
            ON M.IdCategoria = C.Id
        INNER JOIN Proveedor P
            ON M.IdProveedor = P.Id
        INNER JOIN Marca MA
            ON M.IdMarca = MA.Id

    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE()
    END CATCH
END;
GO


CREATE PROCEDURE BuscarMercaderia
    @CodMercaderia VARCHAR(50)
AS
BEGIN
    BEGIN TRY

        SELECT
            M.Id,
            M.Descripcion,
            C.Descripcion AS Categoria,
            P.RazonSocial AS Proveedor,
            MA.Descripcion AS Marca,
            M.CodMercaderia,
            M.Stock,
            M.PrecioUnitario
        FROM Mercaderia M
        INNER JOIN Categoria C
            ON M.IdCategoria = C.Id
        INNER JOIN Proveedor P
            ON M.IdProveedor = P.Id
        INNER JOIN Marca MA
            ON M.IdMarca = MA.Id
        WHERE M.CodMercaderia = @CodMercaderia

    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE()
    END CATCH
END;
GO
