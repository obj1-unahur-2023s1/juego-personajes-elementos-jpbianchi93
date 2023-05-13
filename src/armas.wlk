object ballesta{
	var cantidadDeFlechas = 10
	
	method potencia() = 4
	method estaCargada() = cantidadDeFlechas > 0
		//es igual a { return cantidadDeFlechas >0 }
	method registrarUso(){
		cantidadDeFlechas --
		// -- = -=1
	}	
	method cantidadDeFlechas() = cantidadDeFlechas
}

object jabalina{
	var property estaCargada = true
	
	method estaCargada() = estaCargada
	method potencia() = 30
	method registrarUso(){
		estaCargada = false
	}
}

