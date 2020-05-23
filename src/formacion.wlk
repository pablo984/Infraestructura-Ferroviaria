import vagones.*

class Formacion {
	const vagones = []
	
	method agregarVagones(trenes) {
		vagones.addAll(trenes)
	}
	method vagones() {
		return vagones
	}
	method capacidadMaxDePasajeros() {
		return vagones.sum({ v => v.capacidadPasajeros() })
	}
	
}
