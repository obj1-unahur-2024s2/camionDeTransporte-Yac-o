object knightRider {
    method peso() = 500
    method nivelDePeligrosidad() = 10
}

object bumblebee {
    var nivelDePeligrosidad
    var esRobot = True

    method peso() = peso

    method nivelDePeligrosidad(){
        if esRobot {
            nivelDePeligrosidad = 30
        } else {
            nivelDePeligrosidad = 15
        }
        
        return nivelDePeligrosidad
    }

    method transformar(){
       esRobot = !esRobot()
    }

    method esRobot() = esRobot
}

object paqueteDeLadrillos{
    var property cantLadrillos = 12

    method pesoLadrillo() = 2

    method peso(){
        return cantLadrillos() * pesoLadrillo()
    }

    method nivelDePeligrosidad() = 
}

object arenaAGranel{
    var property peso = 10
    method nivelDePeligrosidad() = 1
}

object bateriaAntiaerea{
    var estaCargado() = True

    method peso() = 
        if estaCargado 300 else 200    

    method nivelDePeligrosidad() =
        if estaCargado 100 else 0

    method cargaODescarga(){
        estaCargado = !estaCargado
    }
}

object contenedor{
    const cosas = ()
    method agregarCosas(unaCosa){
            cosas.add(unaCosa)
    }

    method peso(){
        return 100 + cosas.sum(c => c.peso())
    }

    method nivelDePeligrosidad(){
        if cosas.isEmpty() return 0 else
        return cosas.max( c => c.nivelDePeligrosidad()).nivelDePeligrosidad()
    }
}

object residuos{
    var property peso = 0
    method nivelDePeligrosidad() = 200
}

object embalajeDeSeguridad{
    var property cosaEnvuelta = cosaNula

    method peso(){
        return cosaEnvuelta.peso()
    }

    method nivelDePeligrosidad(){
        return cosaEnvuelta.nivelDePeligrosidad() * .5
    }
}

object cosaNula{
    method peso() = 0
    method nivelDePeligrosidad() = 0
}


//COSAS!!!










object camion{
    const cosas = ()
    
}













