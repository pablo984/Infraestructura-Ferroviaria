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
	method setOrdenar() {
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
	method cargaMaxima() {
		if (tieneBanio) {
			return 300
		}
		else {
			return 800
		}
	}
	method pesoMaximo() {
		return (self.capacidadPasajeros() * 80) + self.cargaMaxima() + 2000   
	}
	method mantener() {
		if (not estaOrdenado) {
			self.setOrdenar()
		}
		else {
		}
	}
	method esDePasajeros() {
		return true
	}
}

class VagonDeCarga {
	var cargaMaxima
	var maderasSueltas 
	
	method setCargaMaxima(cuanto) {
		cargaMaxima = cuanto
	}
	method setMaderasSueltas(cuantas) {
		maderasSueltas = cuantas
	}
	method cargaMaxima() {
		return cargaMaxima - (maderasSueltas * 400)
	}
	method capacidadPasajeros() {
		return 0
	}
	method tieneBanio() {
		return false
	}
	method maderasSueltas() {
		return maderasSueltas
	}
	method pesoMaximo() {
		return self.cargaMaxima() + 1500
	}
	method mantener() {
		maderasSueltas = 0.max(maderasSueltas -2)
	}
	method esDePasajeros() {
		return false
	}
}

class VagonDormitorio {
	var compartimientos
	var camas
	
	method setCompartimientos(cuantos) {
		compartimientos = cuantos
	}
	method setCamas(cuantas) {
		camas = cuantas
	}
	method compartimientos() {
		return compartimientos
	}
	method camasPorCompartimiento() {
		return camas
	}
	method capacidadPasajeros() {
		return compartimientos * camas
	}
	method tieneBanio() {
		return true
	}
	method cargaMaxima() {
		return 1200
	}
	method pesoMaximo() {
		return 4000 + self.cargaMaxima() + (80 * self.capacidadPasajeros())				
	}
	method mantener() {
	}
	method esDePasajeros() {
		return true
	}
}	
	
	
	
	
	
	
	
