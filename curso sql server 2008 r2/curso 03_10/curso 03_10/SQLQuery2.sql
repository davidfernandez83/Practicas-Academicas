create table clientes
(
codigo int identity,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(20),
provincia varchar(20),
telefono varchar(11),
primary key(codigo)
)

insert into clientes values
('Lopez Marcos','Colon 111','Cordoba','Cordoba','null')
insert into clientes values
('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585')
insert into clientes values
('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445')
insert into clientes values
('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null)
insert into clientes values
('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685')
insert into clientes values
('Gomez Ines','San Martin 566','Santa Fe','Santa Fe','0345252525')
insert into clientes values
('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455')
insert into clientes values
('Lopez Carlos',null,'Cruz del Eje','Cordoba',null)
insert into clientes values
('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366')
insert into clientes values
('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745')