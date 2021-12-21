
function funcionDePrueba(){

	if( confirm('test') ){
		alert('funciona');
		return false;
	}
	alert('no se ejecuta si le doy aceptar');

}