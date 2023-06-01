
// Validar formulario LOGIN

function validarLogin() {
	
	// Si el valor del campo email le quitamos los espacios laterales y es igual a vacío, salta el ALERT
	if (email.value.trim() == "") {
	
		// Al no cumplir la condición salta el mensaje de alerta
		alert('¡El email es obligatorio!')
	
		return false;
	}
	
	// Si el valor del campo contraseña le quitamos los espacios laterales y es igual a vacío, salta el ALERT
	if (password.value.trim() == "") {
		
		// Al no cumplir la condición salta el mensaje de alerta
		alert('¡La contraseña es obligatoria')
		
		return false;
	}
	
	alert("Acceso permitido.")
	return true;
}

// Validar formulario REGISTRO

function validarRegistro() {
	
	// Si el valor del campo nombre le quitamos los espacios laterales y es igual a vacío, salta el ALERT
	if (nombre.value.trim() == "") {
	
		// Al no cumplir la condición salta el mensaje de alerta
		alert('¡El nombre es obligatorio!')
	
		return false;
	}
	
	// Si el valor del campo email le quitamos los espacios laterales y es igual a vacío, salta el ALERT
	if (email.value.trim() == "") {
	
		// Al no cumplir la condición salta el mensaje de alerta
		alert('¡El email es obligatorio!')
	
		return false;
	}
	
	// Si el valor del campo dirección le quitamos los espacios laterales y es igual a vacío, salta el ALERT
	if (direccion.value.trim() == "") {
	
		// Al no cumplir la condición salta el mensaje de alerta
		alert('¡La dirección es obligatoria!')
	
		return false;
	}
	
	// Si el valor del campo contraseña, le quitamos los espacios laterales y es igual a vacío, salta el ALERT
	if (password.value.trim() == "") {
		
		// Al no cumplir la condición salta el mensaje de alerta
		alert('¡La contraseña es obligatoria')
		
		return false;
	}
	
	alert("Registro completado.")
	return true;
}

window.onload = function() {
	
	formLogin.onsubmit = validarLogin;
	formRegistro.onsubmit = validarRegistro;
}