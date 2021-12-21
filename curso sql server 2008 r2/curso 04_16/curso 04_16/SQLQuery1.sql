create table empleados
(
documento char(8) not null,
nombre varchar(30),
domicilio varchar(30)
constraint PK_empleados primary key (documento)
)

create table clientes
(
documento char(8) not null,
nombre varchar(30),
domicilio varchar(30)
constraint PK_clientes primary key(documento)
)

create view vista_empleados_clientes
as
select documento,nombre,domicilio, 'empleado' as condicion from empleados
union
select documento,nombre,domicilio, 'cliente' from clientes

create trigger DIS_empl_cli_insertar on vista_empleados_clientes
instead of insert
as
insert into empleados
select documento,nombre,domicilio from inserted
where condicion='empleado'
insert into clientes
select documento,nombre,domicilio from inserted
where condicion='cliente'

insert into vista_empleados_clientes values ('11111111','Ana Costa', 'Pasteur 1100', 'empleado');
insert into vista_empleados_clientes values ('11222222','Carlos Perez', 'Pasteur 1200','cliente');


create trigger DIS_empl_actualizar
on vista_empleados_clientes
instead of update
as
declare @condicion varchar(10)
set @condicion=(select condicion from inserted)
if UPDATE(documento)
	begin
	raiserror('lols documentos no se modifican',1,10)
	rollback transaction
	end
else
	if @condicion='empleado'
		begin
		update empleados set empleados.nombre=inserted.nombre,
		empleados.domicilio=inserted.domicilio
		from empleados
		join inserted on empleados.documento=inserted.documento
		end
	else
		if @condicion='cliente'
		begin
		update clientes set clientes.nombre=inserted.nombre,
		clientes.domicilio=inserted.domicilio
		from clientes
		join inserted on clientes.documento=inserted.documento
		end

		
		
update vista_empleados_clientes
set domicilio='Pasteur 1000'
where documento='11111111'