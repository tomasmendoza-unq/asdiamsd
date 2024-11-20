import managers.levelManager.*
import src.managers.fantasmaManager.*
import personajes.pacman.*
import estados.estadosGame.*
import escenarios.pantallas.Pantalla.*

// TESTEAR:
// * QUE CUANDO YA INICIO EL NIVEL, CAPTURE LA EXPECTION.
object mainScreen inherits Pantalla{
    override method image(){
        return "main.jpg"
    }
}