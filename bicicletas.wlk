import accesorios.*

class Bicicleta{
    const rodado
    const property largo
    const property marca
    const property accesorios

    method altura() = rodado * 2.5 + 15

    method velocidadDeCrucero() = 
        if (largo > 120) { rodado + 6 } else { rodado + 2 }  
    
    method carga() = accesorios.sum({a => a.carga()})

    method peso() = rodado / 2 + accesorios.sum({a=> a.peso()})

    method tieneLuz() = accesorios.any({a=> a.esLuminoso()})
    
    method cantidadAccesoriosLivianos() = 
        accesorios.filter({a => a.peso() < 1}).size()
}

