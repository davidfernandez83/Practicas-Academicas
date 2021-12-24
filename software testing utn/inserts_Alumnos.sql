INSERT INTO ALUMNOS (Alu_Legajo, Alu_Nombre, Alu_Apellido, Alu_FecIngreso) VALUES (100150,'Rafael','Guido','10/10/2020')
INSERT INTO ALUMNOS (Alu_Legajo, Alu_Nombre, Alu_Apellido, Alu_FecIngreso) VALUES (100151,'María','Del Puerto','10/10/2020')
INSERT INTO ALUMNOS (Alu_Legajo, Alu_Nombre, Alu_Apellido, Alu_FecIngreso) VALUES (100152,'Susana','De Luca','10/10/2020')
INSERT INTO ALUMNOS (Alu_Legajo, Alu_Nombre, Alu_Apellido, Alu_FecIngreso) VALUES (100153,'Juan','Pizzi','10/10/2020')
INSERT INTO ALUMNOS (Alu_Legajo, Alu_Nombre, Alu_Apellido, Alu_FecIngreso) VALUES (100154,'Manuel','Gonzalez','10/10/2020')

INSERT INTO CARRERAS (Car_Codigo, Car_Nombre) VALUES ('001','Ingeniería en Sistemas')
INSERT INTO CARRERAS (Car_Codigo, Car_Nombre) VALUES ('002','Arquitectura')
INSERT INTO CARRERAS (Car_Codigo, Car_Nombre) VALUES ('003','Ingeniería Industrial')

INSERT INTO DEPARTAMENTOS (Dep_Codigo, Dep_Nombre) VALUES ('MAT','Matematicas')
INSERT INTO DEPARTAMENTOS (Dep_Codigo, Dep_Nombre) VALUES ('IDI','Idiomas')
INSERT INTO DEPARTAMENTOS (Dep_Codigo, Dep_Nombre) VALUES ('SIS','Sistemas')

INSERT INTO MATERIAS (Mat_Codigo, Mat_Nombre, Dep_codigo) VALUES ('401','Analisis Matematico 1','MAT')
INSERT INTO MATERIAS (Mat_Codigo, Mat_Nombre, Dep_codigo) VALUES ('402','Algebra','MAT')
INSERT INTO MATERIAS (Mat_Codigo, Mat_Nombre, Dep_codigo) VALUES ('903','Algoritmos','SIS')
INSERT INTO MATERIAS (Mat_Codigo, Mat_Nombre, Dep_codigo) VALUES ('904','Programación 1','SIS')
INSERT INTO MATERIAS (Mat_Codigo, Mat_Nombre, Dep_codigo) VALUES ('905','Programación 2','SIS')
INSERT INTO MATERIAS (Mat_Codigo, Mat_Nombre, Dep_codigo) VALUES ('204','Ingles Técnico 1','IDI')

INSERT INTO PROFESORES (Pro_legajo, Pro_Nombre, Pro_Apellido, Pro_Fecnac) VALUES (73001,'Fernando','Rolon','01/02/1985')
INSERT INTO PROFESORES (Pro_legajo, Pro_Nombre, Pro_Apellido, Pro_Fecnac) VALUES (73002,'Ivan','Perez','01/02/1985')
INSERT INTO PROFESORES (Pro_legajo, Pro_Nombre, Pro_Apellido, Pro_Fecnac) VALUES (73003,'Fernando','Kifel','01/02/1985')
INSERT INTO PROFESORES (Pro_legajo, Pro_Nombre, Pro_Apellido, Pro_Fecnac) VALUES (73004,'Roxana','Sosa','01/02/1985')
INSERT INTO PROFESORES (Pro_legajo, Pro_Nombre, Pro_Apellido, Pro_Fecnac) VALUES (73009,'Andres','Muñiz','01/02/1985')

INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('001','401')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('001','402')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('001','903')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('001','904')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('001','905')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('001','204')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('003','401')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('003','402')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('003','204')
INSERT INTO MATERIAS_carreras (Car_Codigo, Mat_Codigo) VALUES ('002','204')

INSERT INTO DEPARTAMENTOS_MATERIAS (Dep_Codigo, Mat_Codigo) VALUES ('MAT','401')
INSERT INTO DEPARTAMENTOS_MATERIAS (Dep_Codigo, Mat_Codigo) VALUES ('MAT','402')
INSERT INTO DEPARTAMENTOS_MATERIAS (Dep_Codigo, Mat_Codigo) VALUES ('SIS','903')
INSERT INTO DEPARTAMENTOS_MATERIAS (Dep_Codigo, Mat_Codigo) VALUES ('SIS','904')
INSERT INTO DEPARTAMENTOS_MATERIAS (Dep_Codigo, Mat_Codigo) VALUES ('SIS','905')
INSERT INTO DEPARTAMENTOS_MATERIAS (Dep_Codigo, Mat_Codigo) VALUES ('IDI','204')

INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73001,'401')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73001,'402')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73004,'401')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73002,'903')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73002,'904')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73002,'905')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73003,'401')
INSERT INTO MATERIAS_PROFESORES (Pro_Legajo, Mat_Codigo) VALUES (73003,'204')

INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('K01','401',73001,'09:00','Medrano')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('K02','402',73001,'12:00','Avellaneda')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('K03','903',73002,'16:00','Medrano')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('K04','903',73002,'20:00','Mozart')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('K05','401',73002,'22:00','Medrano')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('M01','401',73002,'09:00','Medrano')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('M02','401',73003,'12:00','Mozart')
INSERT INTO CURSOS (Cur_Codigo, Mat_Codigo, Pro_Legajo, Cur_Horario, Cur_Sede) VALUES ('M03','204',73003,'19:00','Medrano')

INSERT INTO CURSOS_ALUMNOS(Cur_Codigo, Alu_Legajo) VALUES ('K01','100150')
INSERT INTO CURSOS_ALUMNOS(Cur_Codigo, Alu_Legajo) VALUES ('K01','100151')
INSERT INTO CURSOS_ALUMNOS(Cur_Codigo, Alu_Legajo) VALUES ('K01','100152')
INSERT INTO CURSOS_ALUMNOS(Cur_Codigo, Alu_Legajo) VALUES ('M01','100150')
INSERT INTO CURSOS_ALUMNOS(Cur_Codigo, Alu_Legajo) VALUES ('K05','100153')
INSERT INTO CURSOS_ALUMNOS(Cur_Codigo, Alu_Legajo) VALUES ('M03','100154')


select * from Alumnos
select * from Carreras
select * from Departamentos
select * from Materias
select * from Materias_Profesores
select * from Profesores
set dateformat DMY
--- Todos los Alumnos que ingresaron en 2020
select * from Alumnos where Alu_FecIngreso >= '01/01/2020' and Alu_Fecingreso <= '31/12/2021'
-- Nombre completo de Todos los Alumnos con Legajo mayor a 100110
select Alu_Nombre+' '+Alu_Apellido from Alumnos where Alu_Legajo >= '100110'
-- Nombre completo de Todos los Alumnos con Legajo mayor a 100110, sin espacios
select rtrim(Alu_Nombre)+' '+rtrim(Alu_Apellido) as Nombre_y_Apellido from Alumnos where Alu_Legajo >= '100110'
-- Lista de Materias ordenadas por nombre
select * from Materias order by mat_nombre
-- Nombre y codigo de Materias ordenadas decrecientemente por codigo
select Mat_Nombre, Mat_Codigo from materias order by mat_codigo desc
--Nombre de Materias del departamento de Sistemas
select mat_nombre from materias where dep_codigo = 'SIS'
-- Primeros 2 departamentos ordenados por nombre
select top 2 from departamentos order by dep_nombre 




-- Cantidad de Materias por carrera
select Car_codigo CodCarrera, count(*) CantMaterias from Carreras_Materias group by Car_codigo
-- Materias que dicta el profesor cuyo legajo es 73002
select mat_codigo from materias_profesores where Pro_Legajo='73002'
-- Alumnos del curso K01 ordenado por legajo
select alu_legajo from Cursos_Alumnos where cur_codigo='K01' order by Alu_Legajo
-- Cantidad de alumnos inscriptos en todos los cursos
select count(*) CantAlumnos from Cursos_Alumnos
-- Cursos de la carrera Sistemas
select * from cursos where cur_codigo like 'K%'
-- Profesores con apellido que incluye una ñ
select * from Profesores where Pro_Apellido like '%ñ%'

------ JOINS
-- Los nombres de todas las materias de una carrera
select mat_nombre from materias inner join carreras_materias on materias.mat_codigo = 
carreras_materias.mat_codigo where car_codigo = '001'

-- nombre completo de los profesores que dictan una materia
select rtrim(pro_nombre)+' '+rtrim(pro_apellido) NombreCompleto
from profesores inner join materias_profesores on profesores.pro_legajo = materias_profesores.pro_legajo
where materias_profesores.mat_codigo='401'

-- Los nombres de todas las materias de un departamento
select mat_nombre from materias where dep_codigo = 'MAT'

-- Nombre completo de todos los alumnos de un curso
select rtrim(alu_nombre)+' '+rtrim(alu_apellido) NombreCompleto from 
alumnos inner join cursos_alumnos on alumnos.alu_legajo = cursos_alumnos.alu_legajo
where cur_codigo = 'k01'

-- Para cuales departamentos trabaja un profesor
select distinct dep_codigo from materias m inner join materias_profesores mp on m.mat_codigo = mp.mat_codigo
where mp.pro_legajo='73002'

-- Cuales departamentos tienen profesores
select distinct dep_codigo from materias m inner join materias_profesores mp on m.mat_codigo = mp.mat_codigo

-- Para cuantos departamentos trabaja un profesor
select count(distinct dep_codigo) cuantos from materias m inner join materias_profesores mp on m.mat_codigo = mp.mat_codigo
and mp.pro_legajo='73002'

-- cuantas materias dicta cada profesor
select pro_apellido, count(*) cuantos from profesores p inner join materias_profesores mp on p.pro_legajo = mp.pro_legajo
group by pro_apellido

--cod de curso, horario y sede de todos los cursos en donde se dicta una materia
select cur_codigo, cur_horario, cur_sede from cursos where mat_codigo = '401'

--cod de curso, horario y sede de todos los cursos que dicta un profesor
select cur_codigo, cur_horario, cur_sede from cursos where pro_legajo = '73001'

-- apellido de los docentes que dan matemáticas en sede medrano
select pro_apellido from profesores p inner join cursos c on p.pro_legajo = c.pro_legajo
where cur_sede='Medrano'

-- Nombre y Fecha de ingreso de todos los alumnos que tiene un profesor
select a.Alu_nombre, a.alu_Fecingreso from alumnos a inner join cursos_alumnos ca on a.alu_legajo = ca.alu_legajo
inner join cursos c on ca.cur_codigo = c.cur_codigo

--Codigo de curso,  nombre de la materia y nombre del profesor que dicta cada profesor
select cur_codigo, mat_nombre, pro_nombre from cursos c inner join materias m on c.mat_Codigo = m.mat_codigo
inner join profesores p on p.pro_codigo = c.pro_codigo

--nombre de Profesores que mas materias dictan, ordenado de mayor a menor
select pro_nombre,count(*) from profesores p inner join materias_profesores mp on
p.pro_legajo = mp.pro_legajo
group by pro_nombre
order by 2 desc

--Nombre de cada departamento, de cada carrera de ese depto, y de cada materia de esa carrera
select dep_nombre, car_nombre, mat_nombre from departamentos d inner join materias m on 
d.dep_codigo = m.dep_codigo inner join carreras_materias cm on m.mat_codigo = cm.mat_codigo
inner join carreras c on c.car_codigo = cm.car_codigo

-- Nombre de las materias que no se dictan en la sede Medrano
select mat_nombre from materias m inner join cursos c on m.mat_codigo = c.mat_codigo
and cur_sede <> 'Medrano'

-- Todas las materias que no tiene profesor asignado
select mat_codigo, mat_nombre from materias where mat_codigo not in(select mat_codigo from profesores)

-- Curso con la maxima cantidad de alumnos
select top 1 c.cur_codigo,count(*) from cursos c inner join cursos_Alumnos ca on c.cur_codigo = ca.cur_codigo
group by c.cur_codigo order by 2 desc

-- los apellidos de los profesores de los cursos con mas de 2 alumnos inscriptos
select pro_apellido, c.cur_codigo,count(ca.alu_legajo) inscriptos from profesores p inner join cursos c on p.pro_legajo = c.pro_legajo
inner join cursos_alumnos ca on c.cur_codigo = ca.cur_codigo
group by pro_apellido, c.cur_codigo
having count(ca.alu_legajo) > 2

-- Nombres de los alumnos inscriptos en mas de un curso
select alu_nombre, count(*) from alumnos a inner join cursos_alumnos ca on a.alu_legajo = ca.alu_legajo
group by alu_nombre
having count(*) > 1















