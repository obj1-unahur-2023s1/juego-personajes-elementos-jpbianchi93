import armas.*
import elementos.*
//importación de archivos

object floki {
	var property arma = ballesta
	
	method encontrar(elemento){
		if(arma.estaCargada()){
			arma.registrarUso()
			elemento.recibirAtaque(arma.potencia())
		}
	}
}

object mario {
	var valorRecolectado = 0
	var ultimoElemento
	
	method encontrar(elemento){
		valorRecolectado += elemento.otorgaValor()
		elemento.recibirTrabajo()
		ultimoElemento = elemento
	}
	method esFeliz() = valorRecolectado > 50 or ultimoElemento.altura() >= 10
}