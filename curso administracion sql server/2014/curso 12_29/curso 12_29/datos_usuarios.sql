create procedure datos_usuarios
@nombre		nvarchar(50)
as
begin
select * from Usuarios
where nombre=@nombre
order by id asc
end