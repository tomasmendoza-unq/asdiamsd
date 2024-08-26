
object tom {
	
	var energia = 50 
	 
	method comer(raton) {
		energia = self.energiaObtieneAlComerRaton(raton)
	}
	
	method correr(distancia){
		energia = energia-self.energiaQueGastaAlCorrer(distancia)
	}
	
	method velocidadMaxima()  {
		return 5 + energia/10
	}
	// puedeComerRaton Methods
	method puedeComerRaton(distancia){
		return energia > self.energiaQueGastaAlCorrer(distancia)
	}

	method energiaQueGastaAlCorrer(distancia) {
		return distancia/2  
	} 

	// fin

	// quiereComerRaton

	method quiereComerRaton(distancia,raton) {
		return self.puedeComerRaton(distancia) && self.convieneComerlo(raton, distancia)
	}

	method convieneComerlo(raton, distancia){
		return self.energiaObtieneAlComerRaton(raton)> self.energiaQueGastaAlCorrer(distancia)
	}

	method energiaObtieneAlComerRaton(raton) {
		return energia + 12 + raton.peso()
	}


	// fin
}

object jerry {
	var edad = 2

	method peso() {
		return edad * 20
	} 

	method cumplir() {
		edad = edad + 1
	}
}

object nibbles {
	method peso(){
		return 35
	} 
}


