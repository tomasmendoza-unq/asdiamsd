import levels.Level.*
import levels.level2.*
import mapas.mapa1.*


object level1 inherits Level{

    override method mapa(){
        return mapa1
    }

    override method siguienteNivel(){
        return level2
    }

}
