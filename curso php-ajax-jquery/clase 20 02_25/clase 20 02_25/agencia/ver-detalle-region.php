<?php
    
    $titulo= "Detalle de una region";
    require "clases/Conexion.php";
    require "clases/Region.php";

    $regID=$_GET['regid'];
    $objRegion=new Region();
    $listado=$objRegion->verRegionPorID($regID);

include 'templates/encabezado.php'; 
?>

    <div id="main">
        <h1><?php echo $titulo; ?></h1>
        
        <table id="listadoC">
            <tr>
                <th>ID</th>
                <th>Region</th>
            </tr>
            <tr>
                <td><?php echo $listado['regid'] ?></td>
                <td><?php echo $listado['regnombre'] ?></td>
            </tr>
        </table>
        
        
    </div>
    
<?php include 'templates/pie.php' ?>