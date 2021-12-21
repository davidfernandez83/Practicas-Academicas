
function validarForm(){
	//var nombre = document.getElementById('nombre').value
	var nombre = document.querySelector('input[name="nombre"]').value;
	var email = document.querySelector('input[name="email"]').value;
	var numero = document.querySelector('input[name="numero"]').value;


	if( nombre == null || nombre.length == 0 || /^\s+$/.test(nombre) ) {
  		alert('[ERROR]: debe completar el campo NOMBRE');
  		return false;
	}
	if( !(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,4})+$/.test(email)) ) {
		alert('[ERROR]: debe completar el campo EMAIL');
  		return false;
	}
	if( isNaN(parseInt(numero)) ) {
		alert('[ERROR]: debe completar el campo NUMERO');
  		return false;
	}

	return true
	

}