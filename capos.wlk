object rolando {
    var mochila = #{}

    var property hogar = castillo
    var property capacidad = 2
    const historial = []

    method encontrar(artefacto) {
        if(mochila.size() < capacidad) {
            mochila.add(artefacto)
        }
        historial.add(artefacto)
    }

    method historial() { return historial} 

    method artefactoEnHistorial(indice){
        return historial.get(indice)
    }

    method mochila() {
        return mochila
    }
    method tieneArtefactos() {
        return not mochila.isEmpty()
    }

    method irAlHogar() {
        hogar.almacenar(mochila)
        mochila.clear()
    }
    method posesiones() {
        return mochila + hogar.cofre()
    }

    method posee(artefacto){
        return self.posesiones().contains(artefacto)
    }
}

object castillo {
    var property cofre = #{}
    

    method vaciarCastillo() {
        cofre.clear()
      
    }
    method almacenar(artefactos) {
        cofre.addAll(artefactos)
    }

    
}

object espada {
  
}
object armadura {
  
}
object libro {
  
}
object collar {
  
}