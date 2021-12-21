create proc pa_promedio
@n1 decimal(4,2),
@n2 decimal(4,2),
@resultado decimal(4,2) output
as
select @resultado=(@n1+@n2)/2;

declare @variable decimal(4,2)
execute pa_promedio 5.2,6.8,@variable output
select @variable

--crear un proc que muestre: titulos, edi, precio de un determinado
--autor. y devuelva la suma y promedio de los precios de los libros del autor

create proc pa_autor_sumaypromedio
@autor varchar(30)='%',
@suma decimal(6,2) output,
@promedio decimal(6,2) output
as
select titulo,editorial,precio from libros
where autor like @autor
select @suma=SUM(precio) from libros
where autor like @autor
select @promedio=AVG(precio) from libros
where autor like @autor

declare @s decimal (6,2), @p decimal (6,2)
exec pa_autor_sumaypromedio '%Bach%',@s output, @p output
select @s as total, @p as promedio