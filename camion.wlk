import cosas.*

object camion{
    const property cosas = []
	const TARA = 1000
	const PESO_MAX = 2500

	method cargar(unaCosa){
		cosas.add(unaCosa)
	}

	method descargar(){
		return cosas.remove(cosas.length()-1)
	}

	method pesoTotal(){
		return TARA + cosas.sum({c => c.peso()})
	}

	method hayCosaQuePesa(unPeso){
		return not cosas.filter({c => c.peso() == unPeso}).isEmpty() 
		// Ver si hay algun comando más eficiente que filter. ¿.any?
	}

	method primerCosaPeligrosa(){
		return cosas.findOrDefault({c => c.nivelDePeligrosidad() > 0}, cosaNula)
	}

	method cosasMasPeligrosasQue(unNivelDePeligrosidad){
		return cosas.filter({c => c.nivelDePeligrosidad() > unNivelDePeligrosidad})
	}

	method cosasMaspeligrosasA(unaCosa){
		return cosasMasPeligrosasQue(unaCosa.nivelDePeligrosidad())
	}

	method estaExcedidoDePeso() = if (PESO_MAX > pesoTotal()) true else false

	method puedeCircularEnRuta(maxPeligrosidad){
		return (not estaExcedidoDePeso()) and cosasMaxPeligrosasQue(maxPeligrosidad).isEmpty()
	}


	//	Agregados al camión:
    
	method hayCosaEntrePeso(peso1, peso2){
		return not cosas.filter({c => c.peso().between(peso1, peso2)}).isEmpty()
		// Ver si hay algun comando más eficiente que filter.
	}

	method cosaMasPesada(unacosa){
		return if (cosas.isEmpty()) cosaNula else cosas.max({c => c.peso()})
	}
}













