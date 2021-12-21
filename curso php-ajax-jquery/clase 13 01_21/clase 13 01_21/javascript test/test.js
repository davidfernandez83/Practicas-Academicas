function funcionPrueba(dato){
	var mensaje = 'hiciste click en: '+dato;
	alert(mensaje);
}



/// investigar -------------Mozilla developer network--------------------

var elH1 = document.querySelector('h1');
//var elH1 = document.getElementByTagName('h1');
//var elH1 = document.getElementByID('elID');

var elCampoNumero = document.querySelector('input[name="numero"]');
var elSpan = document.querySelector('span');


elH1.addEventListener('click', cambiarTexto);
elCampoNumero.addEventListener('blur', mostrarMensaje);

function cambiarTexto(){
	elH1.innerHTML ='nuevo texto en el h1';
}

function mostrarMensaje(){
	var valorIngresado = elCampoNumero.value;
	elSpan.classList.remove('ok', 'error');
	if( !isNaN(valorIngresado) ){
		elSpan.classList.add('ok');
		elSpan.innerHTML = 'es un número';
	}
	else{
		elSpan.classList.add('error');
		elSpan.innerHTML = 'no es un número';
	}
}