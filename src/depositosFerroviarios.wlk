import vagones.*
import deposito.*


class Deposito  {
	var formaciones = []
	
	method agregarFormacion(unaFormacion) {
		formaciones.add(unaFormacion)
	}
	method quitarFormacion(unaFormacion) {
		formaciones.remove(unaFormacion)
	}
	method formaciones() {
		return formaciones
	}
	method conjuntoDeVagones() {
		return formaciones.map({ v => v.peso() })
	} 
	 
}
