import vagones.*

class Formacion {
	const vagones = []
	
	method agregarVagon(unVagon) {
		vagones.add(unVagon)
	}
	method quitarVagon(unVagon) {
		vagones.remove(unVagon)
	}
	method agregarVagones(variosVagones) {
		vagones.addAll(variosVagones)
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
}
