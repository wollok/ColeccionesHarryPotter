/** First Wollok example */
object harry {
	
	var asustado = true
	method lanzarHechizo(){
		asustado = not asustado
		voldemort.lastimar()
	}
	
	method estaAsustado() = asustado
	
	method poder() = 100 - voldemort.poder()
}


object ron {
	
	method lanzarHechizo(){
		// no es efectivo
	}
	
	method estaAsustado() = false
	
	method poder() = 0
}

object her{
	var hechizos = [3,4,5]	
	var cantidadHechizos = 0
	
	method lanzarHechizo(){
		cantidadHechizos += 1
	}
	
	method estaAsustado() = cantidadHechizos < 2

	method poder() = hechizos.sum()

	method maximoPoder() = hechizos.max()
	
}

object voldemort{
	var orocrux = 7
	
	method lastimar(){
		orocrux = orocrux - 1
		if(self.moribundo()) howart.ataqueFatal()
	}
	
	method moribundo(){
		return orocrux.between(1,3)
	}
	method poder() = orocrux*10
}

object howart{
	
	const estudiantes = []


	method llegar(alguien){
		estudiantes.add(alguien)
	}	
	
	method esMultitudinaria(){
		return self.cantidadEstudiantes() > 200
	}
	
	method esFamosa(){
		return estudiantes.contains(harry)
	}
	
	method estaEnPeligro(){
		return estudiantes.any{estudiante=> estudiante.estaAsustado() } 
	}
	
	
	method ataqueFatal(){
		estudiantes.clear()
	}
	
	method desterrar(alguien){
		estudiantes.remove(alguien)
	}
	
	method cantidadEstudiantes(){
		return estudiantes.size()
	}
	
	method hacerMagia(){
		
		estudiantes.last().lanzarHechizo()
	}
	
	method hacerOtraMagia(){
		
		self.masPoderoso().lanzarHechizo()
	}
	
	method hacerMuchaMagia(){
		
		estudiantes.forEach{estudiante =>  estudiante.lanzarHechizo()}
	}
	
	method poder() = estudiantes.sum({est=>est.poder()})
	
	method asustados() = estudiantes.filter({est => est.estaAsustado()})
	
	method masPoderoso() = estudiantes.max({est=>est.poder()})
	
	
	
}
