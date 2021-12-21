<?php
	$titulo = "Formulario de contacto";
	session_start();

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
		<div id="contacto">
			<form action="contacto.php" method="post" name="formulario">
				<label for="nombre">Nombre: <input type="text" name="nombre" id="nombre"></label>
				<label for="email">Email: <input type="text" name="email" id="email"></label>
				<label for="mensaje">Mensaje: <textarea name="mensaje" id="mensaje"></textarea></label>
				<input type="button" value="Enviar" class="volver" name="botonForm">
			</form>
		</div>
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>

	<script type="text/javascript" src="validacion.js"></script>
	
</body>
</html>