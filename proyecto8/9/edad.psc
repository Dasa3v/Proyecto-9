Proceso edad
	definir n1 como entero;
	
	Escribir "Ingrese su edad  y le diremos si eres un niño, joven, adulto o adulto mayor";
	leer n1;
	
	si n1 <= 12 Entonces
		Escribir "Eres un niño con una edad de: ", n1, " Años";
		
	SiNo
		si n1 > 12 y n1 <= 40 Entonces
			Escribir "Eres un joven con una edad de: ", n1, " Años";
			
		SiNo
			si n1 > 40 y n1 <= 60 Entonces
				Escribir "Eres un adulto con una edad de: ", n1, " Años";
				
			SiNo
				si n1 > 60 Entonces
					Escribir "Eres un adulto mayor con una edad de: ", n1, " Años";
				FinSi
			FinSi
		FinSi
		
		
	FinSi
	
	
	
	
FinProceso
