import vagones.*

class Formacion {
	const vagones = []
	const locomotoras = []
	
	method agregarVagon(unVagon) {
		vagones.add(unVagon)
	}
	method quitarVagon(unVagon) {
		vagones.remove(unVagon)
	}
	method agregarVagones(variosVagones) {
		vagones.addAll(variosVagones)
	}
	method agregarLocomotora(unaLocomotora) {
		locomotoras.add(unaLocomotora)
	}
	method quitarLocomotora(unaLocomotora) {
		locomotoras.remove(unaLocomotora)
	}
	method locomotoras() {
		return locomotoras
	}
	method vagones() {
		return vagones
	}
	method capacidadMaxDePasajeros() {
		return vagones.sum({ v => v.capacidadPasajeros() })
	}
	method vagonesPopulares() {
		return vagones.filter({ v => v.capacidadPasajeros() > 50 }).size()
	}
	method esFormacionCarguera() {
		return vagones.all({ v => v.cargaMaxima() >= 1000 }) 
	}
	method dispersionDePesos() {
		return vagones.max({ v => v.pesoMaximo() }).pesoMaximo() - 
				 vagones.min({ v => v.pesoMaximo() }).pesoMaximo()
	}
	method cantidadDeBanios() {
		return vagones.count({ v => v.tieneBanio() })
	}
	method mantenimiento() {
		vagones.forEach({ v => v.mantener() })
	}
	method estaEquilibrada() {
		return vagones.max({ v => v.capacidadPasajeros() }).capacidadPasajeros() -
		       vagones.min({ v => v.capacidadPasajeros() }).capacidadPasajeros() <= 20
	}
	/*Este método no está bien, sólo esta bien parcialmente */
	method estaOrganizada() {
		return vagones.all({ v => v.esDePasajeros() }) or vagones.all({ v => not v.esDePasajeros() })
	}
	method velocidadMaxima() {
		return locomotoras.min({ loc => loc.velocidadMaxima() }).velocidadMaxima()
	}
	method esEficiente() {
		return locomotoras.all({ loc => loc.esEficiente() })
	}
	method puedeMoverse() {
		return locomotoras.sum({ loc => loc.arrastre() }) >= 
				 self.pesoMaximoDeLaFormacion()
	}
	method pesoMaximoDeLaFormacion() {
		return locomotoras.sum({ loc => loc.peso() }) + 
				 vagones.sum({ v => v.pesoMaximo()})
	}
	method kilosDeEmpujeQueFaltan() {
		if (self.puedeMoverse()) {
			return 0
		}
		else {
			return self.pesoMaximoDeLaFormacion() - 
			locomotoras.sum({ loc => loc.arrastre() })
		}
	}
}

class Locomotora {
	var peso
	var arrastre
	var velocidad
	
	method peso() {
		return peso
	}
	method arrastre() {
		return arrastre
	}
	method velocidadMaxima() {
		return velocidad
	}
	method setPeso(unPeso) {
		peso = unPeso
	}
	method setArrastre(cuanto) {
		arrastre = cuanto
	}
	method setVelocidad(velMax) {
		velocidad = velMax
	}
	method esEficiente() {
		return arrastre >= peso * 5
	}
}


