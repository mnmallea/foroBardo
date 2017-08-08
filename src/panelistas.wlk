object horacioPagani{
	var nivelEnojo
	
	method nivelEnojo(unNivel){
		nivelEnojo = unNivel
	}
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