Proceso edad
	definir n1 como entero;
	
	Escribir "Ingrese su edad  y le diremos si eres un ni�o, joven, adulto o adulto mayor";
	leer n1;
	
	si n1 <= 12 Entonces
		Escribir "Eres un ni�o con una edad de: ", n1, " A�os";
		
	SiNo
		si n1 > 12 y n1 <= 40 Entonces
			Escribir "Eres un joven con una edad de: ", n1, " A�os";
			
		SiNo
			si n1 > 40 y n1 <= 60 Entonces
				Escribir "Eres un adulto con una edad de: ", n1, " A�os";
				
			SiNo
				si n1 > 60 Entonces
					Escribir "Eres un adulto mayor con una edad de: ", n1, " A�os";
				FinSi
			FinSi
		FinSi
		
		
	FinSi
	
	
	
	
FinProceso
