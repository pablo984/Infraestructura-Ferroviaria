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
	
}
