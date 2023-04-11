object castillo{
	var nivelDeDefensa = 10
	
	method altura() = 20
	method nivelDeDefensa() = nivelDeDefensa
	method recibirAtaque(potencia){
		0.max(nivelDeDefensa-=potencia)
	}
	method recibirTrabajo(){
		200.min(nivelDeDefensa+20)
	}
	method otorgaValor(){
		return nivelDeDefensa/5
	}
}

object aurora{
	var estaViva = true
	
	method altura () = 1
	method recibirAtaque(potencia){
		estaViva = not (potencia>=10)
		}
	method recibirTrabajo(){}
	method otorgaValor(){
		return 15
	}
}

object tipa{
	var altura = 8
	
	method altura() = altura
	method recibirAtaque(potencia){}
	method recibirTrabajo(){
		altura ++
	}
	method otorgaValor()= altura*2
}