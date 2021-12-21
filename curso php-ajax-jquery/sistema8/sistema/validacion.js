var formulario = document.querySelector('form[name="formulario"]');
var boton = document.querySelector('input[name="botonForm"]');

boton.addEventListener('click',validarForm);

function validarForm(){
	var nombre = document.querySelector('input[name="nombre"]').value;
	var email = document.querySelector('input[name="email"]').value;
	var mensaje = document.querySelector('textarea[name="mensaje"]').value;
	var enviar=true;

	if( nombre == null || nombre.length == 0 || /^\s+$/.test(nombre) ) {
		alert('[ERROR]:Ingrese el texto correcto');
		enviar=false;
  		return false;
	}

	if( !(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,4})+$/.test(email)) ) {
		alert('[ERROR]:Ingrese el email correcto ');
		enviar=false;
  		return false;
	}

	if( mensaje == null || mensaje.length == 0 || /^\s+$/.test(mensaje) ) {
		alert('[ERROR]:Ingrese el texto correcto');
		enviar=false;
  		return false;
	}

	/*if( isNaN(parseInt(numero)) ) {
		alert('[ERROR]:Ingrese solo numeros');
		enviar=false;
  		return false;
	}*/

	if(enviar){
		formulario.submit();
	}
}