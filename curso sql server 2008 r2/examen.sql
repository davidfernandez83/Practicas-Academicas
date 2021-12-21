/*
Ejercicio 1

Crear una base de datos llamada “Datos” que contenga al archivos de datos llamado "Datos" 
tipo MDF con un tamaño inicial de 2048kb y un crecimiento del 10%.
El registro de transacción debe iniciar con un tamaño de 1024kb e incrementar  en  1024kb .
Todos estos deben estar ubicados en la carpeta D:\DATA . Los archivos deben pertenecer al grupo 
de archivo primario. 
*/
create database Datos

/*
Ejercicio 2A

Genere dos tablas para poder insertar los siguientes registros cuyos campos posean los tipos de datos y 
restriccion que Ud. considere más adecuados.
Considere claves primarias, valores válidos, etc.

 insert into secciones values('Administracion',8000);
 insert into secciones values('Contaduría',7000);
 insert into secciones values('Sistemas',9500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

Los campos para tabla empleados son:
legajo
documento 
sexo
apellido 
nombre 
domicilio 
seccion 
cantidadhijos 
estadocivil 
fechaingreso 

Los campos para tabla seccciones son:
codigo
nombre
sueldo
*/
use Datos
create table secciones
(
codigo int identity primary key,
nombre varchar(30),
sueldo decimal(6,2)
)
 insert into secciones values('Administracion',8000);
 insert into secciones values('Contaduría',7000);
 insert into secciones values('Sistemas',9500);

select * from secciones

use Datos
create table empleados
(
legajo int identity primary key,
documento char(8) unique,
sexo char(1) check (sexo in('m','f')),
apellido varchar(30),
nombre varchar(30),
domicilio varchar(30),
seccion int foreign key references secciones(codigo),
cantidadhijos tinyint,
estadocivil varchar(20),
fechaingreso date
)
 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

select * from empleados

/*
Ejercicio 2B
Cree una vista que sea el resultado de una combinación en la cual se muestren 5 campos:
apellido, nombre, sexo, seccion, cantidad de hijos
*/
create view vista_empleados_secciones
as
select e.apellido, e.nombre, e.sexo, s.codigo, e.cantidadhijos
from empleados e
inner join secciones s
on e.seccion = s.codigo

select * from vista_empleados_secciones

/*
Ejercicio Teoria

Cree una tabla denominada "Teoria" con los siguientes campos:
Pregunta
Respuesta
Utilice la restricción o el tipo de dato que crea conveniente pero sería ideal que el primer campo permita 
sólo números del 1 al 5 y el segundo sólo letras de "A" a la "E".
Inserte la letra correspondiente a la respuesta que crea válida


PREGUNTA 1
Una columna identity:
A. Permite al motor de la base de datos buscar más rápido un registro determinado
B. Tiene un valor generado por el sistema que cambia cuando se inserta o actualiza
un registro y es único dentro de la base
C. Permite identificar registros con igual valor
D. Ninguna respuesta es correcta
E. Guarda un valor numérico secuencial generado automáticamente por el sistema que se
incrementa con cada inserción de un registro

PREGUNTA 2
En una tabla:
A. Pueden existir varias claves primarias 
B. Es obligatorio el uso de una clave primaria 
C. Un campo puede formar parte de la clave primaria y ser clave foránea a la vez 
D. Más de una respuesta es correcta 
E. NInguna respuesta es correcta 

PREGUNTA 3
Que es un trigger
A. Un procedimiento almacenado
B. Un tipo especial de vista
C. Un tipo especial de tabla
D. Un tipo especial de procedimiento almacenado, ejecutado cuando ocurren determinados eventos

PREGUNTA 4
Los TRIGGERS solo pueden configurarse para operaciones de  INSERT, UPDATE o DELETE por separado
A. Verdadero
B. Falso

PREGUNTA 5
¿Qué almacenan las tablas del sistema?
A. Son tablas que almacenan información del sistema operativo
B. Ninguna respuesta es correcta
C. Información adicional del usuario
D. El log de transacciones sobre las tablas del usuario
E. Información sobre los otros objetos de la base de datos

PREGUNTA 6
¿Cuál es la finalidad de una CONSTRAINT?
A. Mejorar la performance de las consultas
B. Resguardar la integridad de los datos
C. Ninguna respuesta es correcta
D. Optimizar la estructura de las tablas
E. Formar parte del diseño de la base de datos

*/
use Datos
create table Teoria
(
pregunta bit check (pregunta between 1 and 5),
respuesta char(1) check (respuesta between 'a' and 'e')
)

insert into Teoria values(1,'e')
insert into Teoria values(2,'e')
insert into Teoria values(3,'d')
insert into Teoria values(4,'a')
insert into Teoria values(5,'e')
insert into Teoria values(6,'b')