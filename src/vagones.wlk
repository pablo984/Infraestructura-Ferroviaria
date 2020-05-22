class VagonDePasajeros {
	var largo
	var ancho
	var tieneBanio = true
	var estaOrdenado = true
	
	method largo() {
		return largo
	}
	method ancho() {
		return ancho
	}
	method tieneBanio() {
		return tieneBanio
	}
	method estaOrdenado() {
		return estaOrdenado
	}
	method setLargo(cuanto) {
		largo = cuanto
	}
	method setAncho(cuanto) {
		ancho = cuanto
	}
	method setTieneBanio() {
		tieneBanio = !tieneBanio
	}
	method setEstaOrdenado() {
		estaOrdenado = !estaOrdenado
	}
	method capacidadPasajeros() {
		if (ancho <= 3 and estaOrdenado) {
			return 8 * largo
		}
		else if (ancho <= 3 and not estaOrdenado) {
			return 8 * largo - 15
		}
		else if (ancho > 3 and estaOrdenado) {
			return 10 * largo
		}
		else {
			return 10 * largo - 15
		}
	}
	method capacidadCarga() {
		if (tieneBanio) {
			return 300
		}
		else {
			return 800
		}
	}
	method pesoMaximo() {
		return (self.capacidadPasajeros() * 80) + self.capacidadCarga() + 2000   
	}
	
	
	
}
