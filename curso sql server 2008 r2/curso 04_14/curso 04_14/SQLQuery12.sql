create trigger int_ventas_insertar
on ventas
for insert
as
declare @stock int
select @stock=stock from libros
join inserted
on inserted.codigolibro=libros.codigo
where libros.codigo=inserted.codigolibro
if (@stock>=(select cantidad from inserted))
	update libros set stock=stock-inserted.cantidad
	from libros
	join inserted
	on inserted.codigolibro=libros.codigo
	where codigo=inserted.codigolibro
else
	begin
	raiserror ('Hay menos libros en stock de la vta solic', 16, 1)
	rollback transaction 
	end
	
	
sp_depends libros
sp_depends int_ventas_insertar
sp_trigger ventas
sp_helptrigger ventas

insert into ventas values ('2015/04/10',2,20,100)

select * from ventas
select * from libros