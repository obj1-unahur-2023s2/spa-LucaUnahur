object olivia {
	var gradoDeConcentracion=6
	
	method gradoDeConcentracion(){
		return gradoDeConcentracion
	}
	
	method recibirMasajes(){
		gradoDeConcentracion+=3
	}
	
	method discutir(){
		gradoDeConcentracion-=1
	}
	
	method darseBanioDeVapor(){
	}
}


object bruno{
	var esFeliz=true
	var tieneSed=false
	var peso=55000
	
	method esFeliz()=esFeliz//es lo mismo q poner el return
	method tieneSed()=tieneSed
	method peso()=peso
	
	method recibirMasajes(){
		esFeliz=true
	}
	
	method darseBanioDeVapor(){
		peso -=500
		tieneSed=true
	}
	
	method tomarAgua(){
		tieneSed=false
	}

	method comerFideos(){
		peso+=250
		tieneSed=true
	}

	method corre(){
		peso-=300
	}
	
	method verNoticiero(){
		esFeliz=false
	}
	
	method estaPerfecto(){
		return esFeliz and not tieneSed and peso.between(50000, 70000)
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
		
	}
}
	object ramiro{
		var nivelDeContractura =0
		var pielGrasosa=false
		
		method nivelDeContractura()=nivelDeContractura
		method pielGrasosa()=pielGrasosa
		method recibirMasajes(){
			nivelDeContractura=0.max(nivelDeContractura-2) // aca toma el maximo entre 0 y el nivel de contractura
		}
		
		method darseBanioDeVapor(){
			pielGrasosa=false
		}
		
		method comerBicMac(){
			pielGrasosa=true
		}
		
		method bajarALaFosa(){
			pielGrasosa=false
			nivelDeContractura+=1
		}
		
		method jugarAlPaddle(){
			nivelDeContractura+=3
		}
		
		method diaDeTrabajo(){
			self.bajarALaFosa()
			self.comerBicMac()
			self.bajarALaFosa()
		}
	}
	
