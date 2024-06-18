Proceso zapatos
	definir cantidad Como Entero;
	Definir n2 Como Real;
	Definir precio Como Real;
	Definir descuento Como Real;
	Definir total Como Real;
	
	
	Escribir "    BIENVENIDO A LA ZAPATERIA    ";
	Escribir "----------------------------------------";
	Escribir "   Nuestras ofertas son:          ";
	Escribir "----------------------------------------";
	Escribir "Por la compra de 10 pares o menos no hay descuento";
	Escribir "----------------------------------------";
	Escribir "Por la compra de 10 a 20 pares recibe un 10% de descuento";
	Escribir "----------------------------------------";
	Escribir "Por la compra de 20 a 30 pares recibe un 20% de descuento";
	Escribir "----------------------------------------";
	Escribir "Por la compra de 30 a mas pares recibe un 40% de descuento";
	Escribir "----------------------------------------";
	Escribir "Ingrese cuantos zapatos desea comprar: ";
	leer cantidad;
	Escribir "----------------------------------------";
	Escribir  "Ingrese el valor de los zapatos: ";
	Leer n2;
	
	si cantidad < 10 Entonces
		Escribir "No hay descuento por lo que el valor de los zapatos es de:";
		precio <- cantidad*n2;
		Escribir precio, " pesos";
	SiNo
		si cantidad >= 10 y cantidad <20 Entonces
			Escribir "Por la compra de: ", cantidad, " Haz tenido un descuento del 10%";
			precio <- cantidad*n2;
			descuento <- precio*0.1;
			total <- precio - descuento;
			Escribir "El total es de: ", precio, " pesos";
			Escribir "El descuento es de: ", descuento, " pesos";
			Escribir "El total de la compra es de: ", total, " pesos";
		SiNo
			si cantidad >= 20 y cantidad < 30 Entonces
				Escribir "Por la compra de: ", cantidad, " Haz tenido un descuento del 20%";
				precio <- cantidad*n2;
				descuento <- precio*0.2;
				total <- precio - descuento;
				Escribir "El total es de: ", precio, " pesos";
				Escribir "El descuento es de: ", descuento, " pesos";
				Escribir "El total de la compra es de: ", total, " pesos";
			
			
			SiNo
				si cantidad >= 30  Entonces
				Escribir "Por la compra de: ", cantidad, " Haz tenido un descuento del 40%";
				precio <- cantidad*n2;
				descuento <- precio*0.4;
				total <- precio - descuento;
				Escribir "El total es de: ", precio, " pesos";
				Escribir "El descuento es de: ", descuento, " pesos";
				Escribir "El total de la compra es de: ", total, " pesos";
			
				
			FinSi
			
			
			FinSi
			
			
		FinSi
	FinSi
	
	
	
	
	

		
	
			
			
		
		
		

	
	
FinProceso
