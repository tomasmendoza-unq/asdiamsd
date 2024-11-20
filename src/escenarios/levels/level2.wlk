import mapas.mapaDePrueba.*
import levels.Level.*
import escenarios.pantallas.pantallaFin.*

object level2 inherits Level{
    override method mapa(){
        return mapaPrueba
    }

    override method siguienteNivel(){
        return gameOver
    }


}