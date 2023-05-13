object castillo{
	var property nivelDeDefensa = 150
	
	method nivelDeDefensa() = nivelDeDefensa
	method altura() = 20
	method recibirAtaque(potencia){
		nivelDeDefensa = 0.max(nivelDeDefensa-=potencia)
	}
	method recibirTrabajo(){
		nivelDeDefensa = 200.min(nivelDeDefensa+20)
	}
	method otorgaValor() = nivelDeDefensa/5
}

object aurora{
	var estaViva = true
	
	method altura () = 1
	method recibirAtaque(potencia){
		estaViva = not (potencia>=10)
		}
	method estaViva() = estaViva
	method recibirTrabajo(){}
	method otorgaValor() = 15
}

object tipa{
	var altura = 8
	
	method altura() = altura
	method recibirAtaque(potencia){}
	method recibirTrabajo(){
		altura ++
	}
	method otorgaValor() = altura*2
}