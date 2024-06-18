Proceso presion
	Definir p como real;
	
	
	Escribir " PRESION ARTERIAL  ";
	Escribir "Ingrese el valor de su presion arterial sistolica:";
	leer p;

	Si p < 90 Entonces
		
		Escribir "baja";
	SiNo
		Si p >= 90 y p < 120 Entonces
			Escribir "Normal" ;
		SiNo
			Si p >=120 y p <= 139 Entonces
				Escribir "Prehipertension" ;
			SiNo
				Si p >=140 y p <=159 Entonces
					Escribir "ALTA: hiper tension fase: 1" ;
				SiNo
					Si p >=160  Entonces
						Escribir "ALTA: hiper tension fase: 2" ;
							SiNo
								Escribir "Error, digite correctamente sus datos, intentelo de nuevo...";
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
FinProceso