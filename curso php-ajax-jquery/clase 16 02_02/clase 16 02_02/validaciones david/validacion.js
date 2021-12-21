//ubico elemento dentro del DOM
var formulario = document.querySelector('form[name="formulario"]');
var boton = document.querySelector('input[name="botonForm"]');
var parrafo = document.querySelector('p');


//suscribo a un evento
//formulario.addEventListener('submit',probar);

parrafo.addEventListener('click',probar2);

boton.addEventListener('click',validarForm);

/*lista de eventos
	click
	mouseover
	mouseout
	submit
	load
	blur
	focus
*/

//funciones
function probar(){
	alert('hiciste click');
}

function probar2(){
	console.log('click');
}

function validarForm(){
	//var nombre = document.getElementById('nombre').value;
	var nombre = document.querySelector('input[name="nombre"]').value;
	var email = document.querySelector('input[name="email"]').value;
	var numero= document.querySelector('input[name="numero"]').value;
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

	if( isNaN(parseInt(numero)) ) {
		alert('[ERROR]:Ingrese solo numeros');
		enviar=false;
  		return false;
	}

	if(enviar){
		formulario.submit();
	}
}