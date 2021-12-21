function confirmarBaja(){
	var mensaje='Si pulsa el boton "Aceptar" se eliminara el producto';
	if(confirm(mensaje)){
		return true;
	}
	window.location='panel-productos.php';
	return false;
}