if OBJECT_ID('empleados') is not null
	drop table empleados
	
create table empleados
(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadhijos tinyint,
primary key(documento)
)


insert into empleados values
('Roberto', '12345678', 'Pasteur 100', 'Ventas', 5000.00, 2),
('Carlos','30222333','Pasteur 110','Ventas',5000.00,3),
('Raul','20888555','Pasteur 120','Soporte tecnico',8000.00,1),
('Martin','20777444','Pasteur 130','Soporte tecnico',8000.00,2),
('Manuel','20999555','Pasteur 140','Gerencia',9000.00,2),
('Raul','20333777','Pasteur 150','Gerencia',9000.00,2),
('Fernando','30999888','Pasteur 160','Desarrollo',9000.00,2),
('Juan','30555444','Pasteur 170','Desarrollo',9000.00,2),
('Leandro','30777555','Pasteur 180','Atencion al cliente',null,null)

select * from empleados



--1 cantidad de empleados
select COUNT(nombre) from empleados

--2 sueldo mas alto y mas bajo colocando un alias
select MAX(sueldo) as 'sueldo maximo', MIN(sueldo) as 'sueldo minimo'
from empleados

--3a cantidad de empleados con sueldo no nulo en la seccion x
select COUNT(nombre) from empleados
where seccion ='Atencion al cliente' and
sueldo is not null

--3b cantidad de empleados inc nulos en la seccion x
select COUNT(nombre) from empleados
where (sueldo is not null or
sueldo is null) and
seccion = 'Atencion al cliente'

select COUNT(*)
from empleados
where seccion='Atencion al cliente'

--4 promedio de sueldos de empleados en la seccion x
select AVG(sueldo) from empleados
where seccion = 'Desarrollo'
