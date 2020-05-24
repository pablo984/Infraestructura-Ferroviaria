import vagones.*

class Formacion {
	const vagones = []
	
	method agregarVagon(unVagon) {
		vagones.add(unVagon)
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
		return vagones.sum({ v => v.cargaMaxima() }) >= 1000
	}
	method dispersionDePesos() {
		return vagones.max({ v => v.pesoMaximo() }).pesoMaximo() - 
				 vagones.min({ v => v.pesoMaximo() }).pesoMaximo()
	}
	method cantidadDeBanios() {
		return vagones.count({ v => v.tieneBanio() })
	}
	
}
