--a- subconsulta exists para devolver los socios que practican tenis
select numero_socio,nombre from socios
inner join inscriptos on numero=numero_socio
where exists (select * from socios where numero=numero_socio and deporte='tenis')

--b- los socios no inscriptos en basquet
select numero,nombre from socios
inner join inscriptos on numero=numero_socio
where deporte NOT IN('basquet')--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

--c- mostrar todos los datos de los socios que han pagado todas las cuotas