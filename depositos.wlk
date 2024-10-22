import bicicletas.*

class Deposito{
    const bicis

    method bicisRapidas() = bicis.filter({b=>b.velocidadDeCrucero() > 25})

    method marcasDeBicis() = bicis.map({b=> b.marca()}).asSet()

    method esNocturno() = bicis.all({b=> b.tieneLuz()})

    method tieneBiciParaLLevar(unaCarga) = bicis.any({b=> b.carga() > unaCarga})

    method marcaBicisMasRapidas() = self.bicisRapidas().map({b=> b.marca()}).asSet()

    method cargaTotalBicisLargas() {
        const bicisLargas = bicis.filter({b => b.largo() > 170})
        return bicisLargas.sum({b=> b.carga()})
    }

    method cantidadBicisSinAccesorios() = 
        bicis.filter({b=> b.accesorios().isEmpty()}).size()

    method sonCompanieras(unaBici) {
    }
    
}