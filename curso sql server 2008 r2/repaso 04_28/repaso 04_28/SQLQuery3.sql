create table clientes
(
cod int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(30),
cod_prov tinyint
)

create table provincias
(
cod tinyint not null,
nombre varchar(30)
)


alter table clientes
add constraint FK_clientes_cod_prov
foreign key(cod_prov) references provincias(cod)

alter table provincias
add constraint PK_provincias_cod
primary key (cod)

insert into provincias values (1,'Buenos Aires')
insert into provincias values (2,'Cordoba')
insert into provincias values (3,'Mendoza')
insert into provincias values (4,'San Luis')

insert into clientes values('Miguel Ramirez','Pasteur 100','Buenos Aires',1)
insert into clientes values('Antonio Ramirez','Pasteur 200','Capital',2)
insert into clientes values('Manuel Ramirez','Pasteur 300','Capital',3)
insert into clientes values('Carolina Ramirez','Pasteur 400','Capital',6)

delete from clientes where cod_prov=6

delete provincias where cod=4