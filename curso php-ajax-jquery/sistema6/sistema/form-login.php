<?php
	$titulo = "Login";

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
		<form action="login.php" method="post">
			<table id="paneles">
				<tr>
					<td class="editar">Usuario: </td>
					<td class="editar"><input type="text" name="usu_login"></td>
				</tr>
				<tr>
					<td class="editar">Clave: </td>
					<td class="editar"><input type="password" name="usu_clave"></td>
				</tr>
				<tr>
					<td colspan="2" class="centrar">
						<input type="submit" value="Ingresar">
					</td>
				</tr>
			</table>
		</form>
		<?php
		if(isset($_GET['error'])){
		?>
			<div id="error">
				Usuario y/o clave incorrectos
			</div>
		<?php
		}
		?>
		
		
	</div>

	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>