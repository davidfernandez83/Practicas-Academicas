create table libros
(
codigo int identity,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(15),
precio float
)

insert into libros values ('libro1','autor1','editorial1',100)
insert into libros values ('libro2','autor2','editorial2',200)
insert into libros values ('libro3','autor3','editorial3',300)
insert into libros values ('libro4','autor4','editorial4',400)
insert into libros values ('libro5','autor5','editorial5',500)
insert into libros values ('libro6','autor6','editorial6',600)
insert into libros values ('libro7','autor7','editorial7',700)
insert into libros values ('libro8','autor8','editorial8',800)

select * from libros

insert into libros (codigo,titulo,autor,editorial,precio
values (5,'Martin Fierro','Jose Hernandez','Paidos',25)

update libros set codigo=5
where titulo='libro1'

sp_columns libros

delete from libros where titulo='libro3'

select IDENT_SEED('libros')
select IDENT_incr('libros')