create trigger TR_RestarStock_Venta
on DetalleVenta
after insert as
begin
    update Mercaderia
    set Stock = Stock - inserted.Cantidad
    from Mercaderia
    inner join inserted on Mercaderia.Id = inserted.IdMercaderia
end;
go

create trigger TR_SumarStock_Compra
on DetalleCompra
after insert as
begin
    update Mercaderia
    set Stock = Stock + inserted.Cantidad
    from Mercaderia
    inner join inserted on Mercaderia.Id = inserted.IdMercaderia
end;
go

create trigger TR_Registrar_Movimiento
on DetalleVenta
after insert as
begin
    insert into Inventario (Descripcion, IdMercaderia, Fecha, Stock)
    select 'VENTA', IdMercaderia, Fecha, Cantidad
    from inserted
end;
go

create trigger TR_ValidarStockMinimo
on Mercaderia
after update as
begin
    if exists (select 1 from inserted where Stock < 0)
    begin
        raiserror ('No hay stock suficiente', 16, 1)
        rollback transaction
    end
end;
go
