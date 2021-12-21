<?php
	$titulo = "Formulario de modificacion de producto";
	require 'conexion.php';
	$prd_id=$_GET['prd_id']; //id de producto
	//categorias
	$sql= "SELECT cat_id,cat_nombre
			FROM categorias";
	//producto
	$sql2="select prd_nombre, prd_descripcion, prd_precio, cat_id, prd_foto1, prd_foto2 from productos
		where prd_id=".$prd_id;

	$resultado= mysqli_query($link,$sql) OR die (mysqli_error($link));//categorias
	$resultado2=mysqli_query($link,$sql2) OR die (mysqli_error($link));//producto
	$fila2=mysqli_fetch_assoc($resultado2);//campos de producto
	mysqli_close($link);
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
		<form action="editar-producto.php" method="POST" enctype="multipart/form-data"> 
			<table id ="paneles">
				<tr>
					<td class="editar">Nombre: </td>
					<td class="editar"><input type="text" name="prd_nombre" id="prd_nombre" value="<?php echo $fila2['prd_nombre'] ?>"></td>
				</tr>
				<tr>
					<td class="editar">Descripcion: </td>
					<td class="editar"><textarea name="prd_descripcion" id="prd_descripcion" rows="7"><?php echo $fila2['prd_descripcion'] ?></textarea></td>
				</tr>
				<tr>
					<td class="editar">Precio: </td>
					<td class="editar"><input type="text" name="prd_precio" id="prd_precio"
						value="<?php echo $fila2['prd_precio'] ?>"></td>
				</tr>
				<tr>
					<td class="editar">Categoria: </td>
					<td class="editar">
						<select name="cat_id" id="cat_id">
							<?php while ($fila= mysqli_fetch_assoc($resultado)) { ?>
								<option
									value="<?php echo "$fila[cat_id]"?>"
									<?php /*si es la categoria del producto*/
									if($fila['cat_id']==$fila2['cat_id']) echo "selected" ?>
								>
										<?php 
											echo "$fila[cat_nombre]";
										 ?>
								</option>
							<?php } ?>
						</select>	
					</td>
				</tr>
				<tr>
					<td class="editar"> Imagen en miniatura: </td>
					<td class="editar">
						<img src="imagenes/<?php echo $fila2['prd_foto1'] ?>">
						<input type="file" name="prd_foto1" id="prd_foto1">
					</td>
				</tr>
				<tr>
					<td class="editar"> Imagen Ampliada: </td>
					<td class="editar">
						<img height="250" width="300" src="imagenes/<?php echo $fila2['prd_foto2'] ?>">
						<input type="file" name="prd_foto2" id="prd_foto2">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="centrar">
						<input type="hidden" name="prd_id" value="<?php echo $prd_id ?>">
						<input type="submit" value="Modificar Producto">		
					</td>
				</tr>
			</table>
		</form>
		
	
		</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>