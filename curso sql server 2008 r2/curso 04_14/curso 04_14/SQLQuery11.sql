drop table libros;

create table libros
(
codigo int identity,
titulo varchar(40),
autor varchar(30),
precio decimal(6,2),
stock int,
constraint PL_libros primary key(codigo)
);

create table ventas
(
numero int identity,
fecha datetime,
codigolibro int not null,
precio decimal(6,2),
cantidad int,
constraint PK_ventas primary key (numero),
constraint FKventas_codigolibro foreign key (codigolibro) references libros(codigo)
);

insert into libros values('uno','Richard Bach',15,100);
insert into libros values('ilusiones','Richard Bach',18,50);
insert into libros values('el aleph','Borges',25,200);
insert into libros values('aprenda php','Mario Molina',45,200);