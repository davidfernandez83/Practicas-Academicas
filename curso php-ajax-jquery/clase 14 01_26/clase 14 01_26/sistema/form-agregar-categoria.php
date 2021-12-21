<?php
	$titulo = "Panel de control - Agregar categoria";
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

		<form action="agregar-categoria.php" method="post">
			<table class="paneles">
				<tr>
					<th colspan="2">Agregar categoria</th>
				</tr>
				<tr>
					<td>Nombre: </td>
					<td><textarea name="nombre"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" class="centrar"><input type="submit" value="Agregar"></td>
				</tr>
			</table>
		</form>
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>