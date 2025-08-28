object tom{
    var energia = 50

    method comer(unRaton){
        energia = (energia + 12 + unRaton.peso()).min(1000) //La energia maxima va a ser 1000
        unRaton.serComido()
    }//Min() va a buscar el minimo entre 100 y el resultado.
    
    method correr(distancia){
        energia = (energia - distancia / 2).max(0) //Max() hace que la energia no sea negativa, maximo va a ser 0
    }   //Max() va a asignarle a energia el valor maximo entre 0 y el resultado (es 0 si el resultado da negativo).

    method velocidadMaxima(){
        return 5 + energia / 10
    }

    method energia(){
        return energia
    }

    method puedeCazar(unaDistancia){
        return energia >= unaDistancia / 2
    }

    method cazar(unRaton, unaDistancia){
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }

}

object jerry{
    var edad = 2
    var distancia = 50

    method peso(){
        return edad * 20
    }

    method cumplirAnios(){
        edad = edad + 1
    }

    method distancia(unaDistancia){
        distancia = unaDistancia
    }

    method serComido(){} //Que este vacio significa que no hace nada.
}

object nibbles{
    method peso(){
        return 35
    }

    method serComido(){}
}


// Inventar otro ratón

object luis{
    var estaSeco = true

    method peso(){
        if(estaSeco){
            return 20
        }
        else{
            return 30
        }
    }

    method serComido(){
        estaSeco = false
    }
}