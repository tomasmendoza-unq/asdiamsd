object rolando {
    
    var property  mochila = #{};
    var property  capacidad = 2;
    var property hogar = castillo
    var property historial = [] 


    method encontrar(artefacto){
        if(mochila.size() < capacidad){
            mochila.add(artefacto)
        }

        historial.add(artefacto)
    }
    
    method artefactoEnHistorial(indice){
        return historial.get(indice)
    }

    method irAlHogar(){
        castillo.almacenar(mochila)
        mochila.clear()
    }

    method tieneArtefactos() {
        return mochila.size() > 0
    }

    method tiene(artefacto) {
        return self.posesiones().contains(artefacto)
    } 

    method posesiones() {
        return mochila + hogar.cofre()
    } 

    method artefactoEnHistorial(){

    }

    //conjuntos-set: #{}cada flecha no tiene etiqueta, 
    // no tiene orden
    // no tiene elementos repetidos
    //lists: listas de estructuras
    //var y const habla de la referencia de un atributo u objeto
}

//hogar

object castillo{
    var property cofre = #{}

    method almacenar(artefactos){
        cofre.addAll(artefactos)
    }
}

object espada {
    
}

object libro {
  
}

object collar {
  
}

object armadura {
  
}