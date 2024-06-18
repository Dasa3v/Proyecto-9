Proceso Sexo
	Definir edad Como entero;
	Definir peso Como Real;
	Definir altura Como Real;
	Definir sex Como Caracter;
	Escribir "Le diremos el peso y altura segun la edad que ingrese";
	Escribir "Ingrese el sexo de la persona; "; 
	leer sex;
	Escribir "Ingrese la edad que desea calcular: ";
	leer edad;
	
	Si sex == "hombre" y edad >= 11 y edad <= 14 Entonces
		Escribir "Esta persona una edad de: ", n1, " Años";
		peso <- 45;
		altura <- 157;
		Escribir "Tiene un peso de: ", peso, " Kgs";
		Escribir "Tiene una altura de: ", altura, " Cms";
		
	SiNo
		Si sex == "hombre" y edad >= 19 y edad <= 24 Entonces
			Escribir "Esta personacon una edad de: ", edad, " Años";
			peso <- 66;
			altura <- 176;
			Escribir "Tiene un peso de: ", peso, " Kgs";
			Escribir "Tiene una altura de: ", altura, " Cms";
			
		SiNo
			Si sex == "hombre" y edad >= 25 y edad <= 50 Entonces
				Escribir "Esta persona con una edad de: ", edad, " Años";
				peso <- 72;
				altura <- 177;
				Escribir "Tiene un peso de: ", peso, " Kgs";
				Escribir "Tiene una altura de: ", altura, " Cms";
				SiNo
						Si sex == "hombre" y edad >= 51  Entonces
						Escribir "Esta persona con una edad de: ", edad, " Años";
						peso <- 77;
						altura <- 173;
						Escribir "Tiene un peso de: ", peso, " Kgs";
						Escribir "Tiene una altura de: ", altura, " Cms";
						
					
						
					SiNo
						Si sex == "mujer" y edad >= 11 y edad <= 14 Entonces
							Escribir "Esta persona con una edad de: ", edad, " Años";
							peso <- 45;
							altura <- 157;
							Escribir "Tiene un peso de: ", peso, " Kgs";
							Escribir "Tiene una altura de: ", altura, " Cms";
						SiNo
							Si sex == "mujer" y edad >= 15 y edad <= 18 Entonces
								Escribir "Esta persona con una edad de: ", edad, " Años";
								peso <- 55;
								altura <- 163;
								Escribir "Tiene un peso de: ", peso, " Kgs";
								Escribir "Tieneuna altura de: ", altura, " Cms";
							SiNo
								Si sex == "mujer" y edad >= 19 y edad <= 24 Entonces
									Escribir "Esta persona con una edad de: ", edad, " Años";
									peso <- 54;
									altura <- 164;
									Escribir "Tiene un peso de: ", peso, " Kgs";
									Escribir "Tiene una altura de: ", altura, " Cms";
								SiNo
									Si sex == "mujer" y edad >= 25 y edad <= 50 Entonces
										Escribir "Esta persona con una edad de: ", edad, " Años";
										peso <- 63;
										altura <- 163;
										Escribir "Tiene un peso de: ", peso, " Kgs";
										Escribir "Tiene una altura de: ", altura, " Cms";
									SiNo
										Si sex == "mujer" y edad >= 25 y edad <= 50 Entonces
											Escribir "Esta persona con una edad de: ", edad, " Años";
											peso <- 65;
											altura <- 160;
											Escribir "Tiene un peso de: ", peso, " Kgs";
											Escribir "Tiene una altura de: ", altura, " Cms";
										FinSi		
										FinSi	
									FinSi	
								FinSi	
							FinSi	
					FinSi
			FinSi
			
		FinSi
	FinSi
	
	
FinProceso
