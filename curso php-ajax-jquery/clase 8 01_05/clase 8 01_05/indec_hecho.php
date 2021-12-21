<!DOCTYPE html>
<html>
<head>
	<title></title>
	<rel type=""
</head>
<body>
<?php
		$meses = array("enero", "febrero", "marzo", "abril", 
						"mayo", "junio", "julio", "agosto", 
						"septiembre", "octubre", "noviembre", "diciembre");
		$inflacion = array(
						3.2, 2.5, 3.6, 2.1,
						2.0, 2.1, 3.1, 3.5,
						2.3, 1.9, 2.4, 2.9);

	/* 
		informar:   mes  valor 
		averiguar: 
					valor mayor
					valor menor
					promedio
					total
	*/
						
?>


<table>
<tr>
	<th>MES</th>
	<th>VALOR</th>
</tr>
<?php
$i=0;
while($i<count($meses)){ ?>
<tr>
	<td><?php echo $meses[$i] ?></td>
	<td><?php echo $inflacion[$i] ?></td>
</tr>
<?php
$i++;
} ?>
</table>

<br>

<?php

$i=0; $n=0; $valormayor=0; $valormenor=0; $promedio=0; $total=0;
while($i<count($inflacion)){
	if($inflacion[$i]>$valormayor)
		$valormayor=$inflacion[$i];
	if($valormenor==0) $valormenor=$inflacion[$i];
	if($inflacion[$i]<$valormenor)
		$valormenor=$inflacion[$i];

	$total=$total+$inflacion[$i];
	$i++;
}
$promedio=$total/count($inflacion);

echo "VALOR MAYOR: ",$valormayor;
echo "<br>VALOR MENOR: ",$valormenor;
echo "<br>PROMEDIO: ",round($promedio,2);
echo "<br>TOTAL: ",$total;

?>




</body>
</html>				