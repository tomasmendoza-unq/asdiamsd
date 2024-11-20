class EstadoGame{
    method siguiente()
    method pressEnter()
    method clear(){}
}

object jugando inherits EstadoGame {
    override method siguiente(){
        return pausa
    }
    override method pressEnter(){
        
    }
}

object pausa inherits EstadoGame{
    override method siguiente(){
        return jugando
    }
    override method pressEnter(){}
}

