--agrupar por tipopago, vendedor y contar la cantidad utilizando rollup
select tipopago,vendedor, COUNT(*) from ventas
group by tipopago, vendedor with rollup

--lo mismo pero utilizanco cube
select tipopago,vendedor, COUNT(*) from ventas
group by tipopago, vendedor with cube