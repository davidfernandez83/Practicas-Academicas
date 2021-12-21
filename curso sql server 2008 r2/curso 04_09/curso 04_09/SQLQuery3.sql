exec pa_crear_libros

sp_helptext pa_crear_libros

create proc pa_libros_limite_stock
as
select * from libros
where cantidad<=10

sp_help pa_libros_limite_stock
sp_helptext pa_libros_limite_stock

exec pa_libros_limite_stock

update libros
set cantidad=2
where codigo=4