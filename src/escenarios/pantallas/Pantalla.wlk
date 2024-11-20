import managers.levelManager.*
import estados.estadosGame.*
import managers.fantasmaManager.*
import managers.portalManager.*
import managers.heladoManager.*
import personajes.pacman.*


class Pantalla{
    const property position = game.at(3, 3)

    method image()

    method pressEnter(){
        self.clear()
        levelManager.iniciarNivel()
        game.onTick(10, "movimiento", {pacman.moverse()})
        game.onTick(10, "movimiento fantasmas", {fantasmaManager.mover()})
    }

    method inicioNivel(){
        return game.getObjectsIn(position).contains(self)
    }

    method clear(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
        game.removeTickEvent("movimiento")
        game.removeTickEvent("movimiento fantasmas")
        fantasmaManager.clearLevel()
        portalManager.clearLevel()
    }

}