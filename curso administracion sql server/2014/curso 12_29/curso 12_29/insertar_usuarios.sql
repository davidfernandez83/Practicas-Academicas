alter procedure insertar_usuarios
@id			int,
@nombre		nvarchar(50),
@apellido	nvarchar(50),
@direccion	nvarchar(100),
@tel		nvarchar(50),
@cp			nvarchar(4)
as
begin
insert into Usuarios (id, nombre, apellido, direccion, tel, cp)
values(@id, @nombre, @apellido, @direccion, @tel, @cp)
end