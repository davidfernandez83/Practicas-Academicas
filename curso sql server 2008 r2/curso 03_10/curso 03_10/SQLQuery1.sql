select marca, COUNT(Marca) cant from Productos
group by marca
having COUNT(Marca)>1
order by 2 desc

select marca, AVG(precio) as 'precio promedio' from Productos
group by Marca
--having AVG(precio) between 5 and 7
having AVG(precio)>5 and AVG(precio)<7 and Marca <> 'mirinda'
order by 2

select marca, COUNT(*) from Productos
group by Marca
having Marca <> 'bimbo'

select marca, COUNT(*) from Productos
where Marca <>'bimbo'
group by Marca

select marca, CAST(AVG(precio) as decimal(10,2)) as promedio from Productos
group by Marca
having COUNT(marca)=6
order by promedio desc



select AVG(precio) from Productos

select marca from Productos