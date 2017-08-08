object horacioPagani{
	var nivelEnojo
	
	method nivelEnojo(unNivel){
		nivelEnojo = unNivel
	}
	method nivelEnojo() = nivelEnojo
	method elevarVoz(){
		self.aumentarNivelEnojo(10)
	}
	method tomarAgua(){
		self.disminuirNivelEnojo(0.1*nivelEnojo)
	}
	method calmarse(){
		if(!self.estaCaliente()){
			nivelEnojo=0
		}
	}
	method aumentarNivelEnojo(cantidad){
		nivelEnojo += cantidad
	}
	method disminuirNivelEnojo(cantidad){
		nivelEnojo = 0.max(nivelEnojo - cantidad)
	}
	method estaCaliente(){
		return nivelEnojo > 20
	}
}

object totiPasman{
	var soberbia
	var tieneSed
	
	method soberbia(nuevaSoberbia){
		soberbia = nuevaSoberbia
	}
	method soberbia() = soberbia
	method tieneSed(nuevaSed){
		tieneSed = nuevaSed
	}
	method tieneSed() = tieneSed
	method elevarVoz(){
		self.aumentarSoberbia(10)
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method calmarse(minutos){
		self.disminuirSoberbia(2*minutos)
	}
	method aumentarSoberbia(unaCantidad){
		soberbia += unaCantidad
	}
	method disminuirSoberbia(unaCantidad){
		soberbia -= unaCantidad
	}
}

object lizzyTagliani{
	var humor
	
	method humor(nuevoHumor){
		humor = nuevoHumor
	}
	method humor() = humor
	method tomarAgua(){
		self.aumentarHumor(humor)
	}
	method calmarse(minutos){
		if(self.estaDeMalHumor()){
			self.aumentarHumor(minutos)
		}
	}
	method aumentarHumor(unaCantidad){
		humor += unaCantidad
	}
	method estaDeMalHumor(){
		return humor < 0
	}
}