object paquete {
	var estaPago = false

	method estaPago() {
		return estaPago
	}

	method pagarEnvio() {
	  estaPago = true
	}

}

// DESTINOS

object puenteDeBrooklyn {

	method puedePasar(mensajero, paquete) {
		return mensajero.peso() <= 1000	&& paquete.estaPago()
	}
}

object matrix {

	method puedePasar(mensajero, paquete) {
		return mensajero.puedeLlamar() && paquete.estaPago()
	}
}



// MENSAJEROS

object chuckNorris {
  	const peso = 900

	method peso() {
		return peso
  }

	method puedeLlamar() {
		return true
	}
}

object neo {

	var credito = [true,false]

	method peso() {
	  return 0
	}

	method puedeLlamar() {
		return credito.randomized().first()
	}
}

object lincolnHawk {
	var peso = 0

	var vehiculos = [bicicleta,camion]

	method peso(_peso) {
	  peso = _peso 
	}

	method puedeLlamar(){
		return false
	}

	method usar(vehiculo){ 
		vehiculos.add(vehiculo)
		vehiculos.remove(vehiculos.first())
	}

	method peso(){
		return peso + vehiculos.last().peso()
	}
}

object bicicleta {
	method peso(){
		return 10
	}
}

object camion {
	var peso = 500

	method peso() {
		return peso
	}

	method tieneAcoplado(){
		return peso > 500
	}

	method agregarAcoplado() {
		peso += 500
	}
}