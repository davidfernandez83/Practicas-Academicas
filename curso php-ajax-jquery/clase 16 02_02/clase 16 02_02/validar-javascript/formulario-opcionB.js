// ubico elemento dentro del DOM

var formulario = document.querySelector('form[name="formulario"]');
var botonEnviar = document.querySelector('input[type="button"]');



//suscribo a un evento
botonEnviar.addEventListener('click', validarForm);

/* 
lista de eventos
	click 
	mouseover
	mouseout
	submit
	load
	blur
	focus
*/

// funciones


function validarForm(){
	//var nombre = document.getElementById('nombre').value
	var nombre = document.querySelector('input[name="nombre"]').value;
	var email = document.querySelector('input[name="email"]').value;
	var numero = document.querySelector('input[name="numero"]').value;

	var enviar=true; // para el método submit()

	if( nombre == null || nombre.length == 0 || /^\s+$/.test(nombre) ) {
  		alert('[ERROR]: debe completar el campo NOMBRE');
  		
  		enviar = false;

	}
	if( !(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,4})+$/.test(email)) ) {
		alert('[ERROR]: debe completar el campo EMAIL');
  		enviar = false;

	}
	if( isNaN(parseInt(numero)) ) {
		alert('[ERROR]: debe completar el campo NUMERO');
  		enviar = false;

	}

	if(enviar){
		formulario.submit();
	}
	

}