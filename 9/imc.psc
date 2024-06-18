Proceso imc
	Definir p como real;
	Definir e como real;
	Definir i como real;
	
	Escribir " IMC  ";
	Escribir"-----------------------";
	Escribir "Ingrese su peso :";
	leer p;
	Escribir "Ingrese su estatura :";
	leer e;
	
	i <- (e*e)/p;
	
	Si i <= 18.5 Entonces
		
		Escribir "Peso bajo";
	SiNo
		Si i >= 18.5 y i <= 24.9 Entonces
			Escribir "Normal" ;
		SiNo
			Si i >=25 y i <=29.9 Entonces
				Escribir "Sobrepeso" ;
			SiNo
				Si i >=30 y i <=34.9 Entonces
					Escribir "Obesidad 1" ;
				SiNo
					Si i >=35 y i <=39.9 Entonces
						Escribir "Obesidad 2" ;
					SiNo
						Si i >=40 y i <=9.9 Entonces
							Escribir "Obesidad 3";
						SiNo
							Si i >=50 Entonces
								Escribir "Obesidad 4";
							SiNo
								Escribir "Error al Escribir, Verifique.....";
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso