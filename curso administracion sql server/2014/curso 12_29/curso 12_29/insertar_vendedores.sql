create procedure insertar_vendedores
@nombre		nvarchar(20),
@apellido	nvarchar(20),
@cel		nvarchar(20),
@email		nvarchar(50),
@productos	nvarchar(max),
@provincia	nvarchar(50)
as
begin
insert into Vendedores(nombre, apellido, cel, email, productos, provincia)
values(@nombre, @apellido, @cel, @email, @productos, @provincia)
end