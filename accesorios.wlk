object farolito{
    method peso() = 0.5

    method carga() = 0

    method esLuminoso() = true
}

class Canasto{
    const volumen

    method peso() = volumen / 10

    method carga() = volumen * 2

    method esLuminoso() = false
}

class MorralDeBici{
    const largo
    const tieneOjoDeGato

    method peso() = 1.2

    method carga() = largo / 3

    method esLuminoso() = tieneOjoDeGato
}



/* 
Para agregar un nuevo tipo de accesorio se debe respetar el polimorfismo.
El nuevo accesorio debe contar, al menos, con los metodos peso(), carga() y esLuminoso()
*/