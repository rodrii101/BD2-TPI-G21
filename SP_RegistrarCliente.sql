CREATE PROCEDURE SP_RegistrarCliente
    @NroCliente BIGINT,
    @DNI varchar(10),
    @Nombre varchar(50),
    @Apellido varchar(50),
    @Telefono varchar(10),
    @idDireccion INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        INSERT INTO Cliente(NroCliente, Dni, Nombre, Apellido, Telefono, IdDireccion)
        VALUES(@NroCliente, @DNI, @Nombre, @Apellido, @Telefono, @idDireccion);

        PRINT 'Alta de Cliente registrada con éxito';
    END TRY
    
    BEGIN CATCH
        RAISERROR('Error crítico al registrar el cliente', 16, 1);
    END CATCH
END;
GO