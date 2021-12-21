create proc pa_libros_autor
@autor varchar(30)
as
select * from libros
where autor=@autor

exec pa_libros_autor 'Borges';
exec pa_libros_autor @autor='Paenza';

create proc pa_libros_autor_editorial
@autor varchar(30),
@editorial varchar(20)
as
select * from libros
where autor=@autor and editorial=@editorial;

pa_libros_autor_editorial 'Richard Bach', 'Planeta';
pa_libros_autor_editorial @autor='Borges', @editorial='Emece';

create proc pa_libros_autor_editorial2
@autor varchar(30)='Borges',
@editorial varchar(20)='Emece'
as
select * from libros
where autor=@autor and editorial=@editorial;

pa_libros_autor_editorial2;
pa_libros_autor_editorial2 @editorial='Nuevo siglo', @autor='Paenza';

if OBJECT_ID('pa_libros_autor_editorial3') is not null
drop proc pa_libros_autor_editorial3
create proc pa_libros_autor_editorial3
@autor varchar(30)='%',
@editorial varchar(20)='%'
as
select titulo,autor,editorial,precio from libros
where autor like @autor and editorial like @editorial;

pa_libros_autor_editorial3 @editorial='P%';
pa_libros_autor_editorial3 default,'P%';
