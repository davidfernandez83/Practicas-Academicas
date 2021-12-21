create table ofertas
(
titulo varchar(40),
autor varchar(30),
editorial varchar(20),
precio decimal(5,2)
)

create proc pa_ofertas as
select titulo, autor, editorial, precio from libros
where precio <=30;

insert into ofertas exec pa_ofertas;

select * from ofertas;