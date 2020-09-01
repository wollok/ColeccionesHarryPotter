/** First Wollok example */
object harry {
	
	var asustado = true
	method lanzarHechizo(){
		asustado = not asustado
		voldemort.lastimar()
	}
}


object ron {
	
	method lanzarHechizo(){
		// no es efectivo
	}
}

object her{
	
	var cantidadHechizos = 0
	
	method lanzarHechizo(){
		cantidadHechizos += 1
	}
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
}
