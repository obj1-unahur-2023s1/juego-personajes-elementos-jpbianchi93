object luisa {
	var personajeActivo
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
	method asignar(personaje){
		personajeActivo = personaje
	}
	
	
}

object floki {
	var arma = 0
	
	method encontrar(elemento){
		if(arma.EstaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}
}

object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado
	
	method encontrar(elemento){
		elemento.recibirTrabajo()
		valorRecolectado = elemento.RecibirValor()
		ultimoElementoEncontrado = elemento
	}
	method esFeliz(){
		return valorRecolectado > 50 || ultimoElementoEncontrado.altura() >= 10
	}
}

object ballesta{
	var flechas = 10
	
	method potencia() = 4
	method estaCargada() = flechas > 10
	method registrarUso(){
		flechas-=1
	}
	
}

object jabalina{
	var  estaCargada = true
	
	method registrarUso(){
		estaCargada = false
	}
}

object castillo{
	var property altura = 20
	var property nivelDeDefensa = 10
	
	method recibirAtaque(potencia){
		nivelDeDefensa-=potencia
	}
	method recibirTrabajo(){
		200.min(nivelDeDefensa+20)
	}
	method RecibirValor(){
		return nivelDeDefensa/5
	}
}

object aurora{
	var property altura = 1
	var property estaViva = true
	
	method recibirAtaque(potencia){
		if (potencia>=10){
			estaViva = false
		}
	}
	method recibirTrabajo(){
		return 15
	}
}

object tipa{
	var property altura = 8
	
	method recibirAtaque(potencia){}
	method recibirTrabajo(){
		altura += 1
	}
	method RecibirValor(){
		return altura*2
	}
}