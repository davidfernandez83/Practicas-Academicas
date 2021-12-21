<?php
    
    $titulo= "Listado de regiones";
    require "clases/Conexion.php";
    require "clases/Region.php";

    $objRegion=new Region();
    $listado=$objRegion->listarRegiones();

include 'templates/encabezado.php'; 
?>

    <div id="main">
        <h1><?php echo $titulo; ?></h1>
        
        <table id="listadoC">
        	<tr>
        		<th>ID</th>
        		<th>Region</th>
        	</tr>
        	<?php
        	foreach($listado as $fila){
        	?>
        	<tr>
        		<td><?php echo $fila['regid'] ?></td>
        		<td><?php echo $fila['regnombre'] ?></td>
        	</tr>
        	<?php } ?>
        </table>
        
        
    </div>
    
<?php include 'templates/pie.php' ?>