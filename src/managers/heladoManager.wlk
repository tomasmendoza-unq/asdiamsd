object heladoManager {
    const helados = []

    method agregarHelado(h){
        helados.add(h)
    } 

    method removerHelados(){
        helados.clear()
    }


    method comioHelado(h){
        helados.remove(h)
    }

    method hayHelado(){
        return !helados.isEmpty()
    }

    method heladoEn(position){
        return game.getObjectsIn(position).get(0)
    }
}