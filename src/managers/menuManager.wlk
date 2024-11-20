import estados.estadosGame.*
import escenarios.pantallas.pantallaInicial.*
import escenarios.pantallas.pantallaFin.*
//TEST:
// QUE VERIFIQUE EL CAMBIO DE ESTADO
object menuManager{
    var estado = mainScreen
    
    method pressEnter(){
        estado.pressEnter()
    }

    method estado(){
        return estado
    }

    method jugando(){
        estado = jugando
    }

    method perdio(){
        self.gameOver()
        self.clear()
        game.addVisual(estado)
    }

    method gameOver(){
        estado = gameOver
    }

    method clear(){
        estado.clear()
    }
}