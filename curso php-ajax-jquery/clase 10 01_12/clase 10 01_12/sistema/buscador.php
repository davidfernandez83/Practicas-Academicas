<?php
	$titulo = "Panel de control - Proyecto integrador";
?>
<?php include "encabezado.php"; ?>
</head>
<body>
	<div id="top"><img src="imagenes/top.png" alt="encabezado" width="980" height="80"></div>
	<div id="nav">
		<?php  include "menu.php"; ?>
	</div>
	<div id="main">
		<h1><?php echo $titulo ; ?></h1>
		<!-- inicio del desarrollo -->
		<form action="resultado.php" method="post">
		<table id="paneles">
			<tr>
				<th colspan="2">Ingrese criterio de busqueda</th>
			</tr>
			<tr>
				<td>Criterio</td>
				<td><input type="text" name="criterio" id="criterio"></td>
			</tr>
			<tr>
				<td colspan="2" class="centrar"><input type="submit" value="Buscar"></td>
			</tr>
		</table>
		</form>
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>