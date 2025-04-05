object paquete {
	var estaPago = false

	method estaPago() {
		return estaPago
	}

	method pagarEnvio() {
	  estaPago = true
	}

	method cancelarPago(){ 
		estaPago = false
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

	var credito = false

	method peso() {
	  return 0
	}

	method agotarCredito(){
		credito = false
	}

	method cargarCredito(){
		credito = true
	}

	method puedeLlamar() {
		return credito
	}
}

object lincolnHawk {
	var peso = 0

	// Asumo que va a utilizar una bicicleta por defecto (consultar)
	var vehiculo = bicicleta

	method peso(_peso) {
	  peso = _peso 
	}

	method puedeLlamar(){
		return false
	}

	method vehiculo(_vehiculo){ 
		vehiculo = _vehiculo
	}

	method peso(){
		return peso + vehiculo.peso()
	}
}

// VEHICULOS

object bicicleta {
	method peso(){
		return 10
	}
}

object camion {
	const pesoBase = 500
	var cantidadAcoplados = 0

	method pesoAcoplado(){
		return 500 * cantidadAcoplados
	}
	method peso() {
		return pesoBase * self.pesoAcoplado() 
	}

	method tieneAcoplado(){
		return self.peso() > 500
	}

	method agregarAcoplado() {
		cantidadAcoplados += 1
	}

	method quitarAcoplado() {
	  cantidadAcoplados -= if (cantidadAcoplados > 0) { 1 } else { 0 }
	}

}