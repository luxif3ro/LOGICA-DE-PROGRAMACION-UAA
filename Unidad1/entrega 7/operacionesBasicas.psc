Algoritmo OperacionesBasicas
	Definir i, n1 ,n2,t Como Entero
	Escribir "Seleccione la operacion que desea hacer";
	Escribir "1.- Suma";
	Escribir "2.- Resta";
	Escribir "3.- Multiplicacion";
	Escribir "4.- Division";
	Leer i;
	Limpiar Pantalla
	Segun i Hacer
		1:
			Escribir "SUMA";
			Escribir "Ingresa el primer numero"
			Leer n1;
			Escribir "Ingresa el segundo numero"
			Leer n2;
			t <- n1 + n2;
			Escribir "El resultado es: ",t;
		2:
			Escribir "Resta";
			Escribir "Ingresa el primer numero"
			Leer n1;
			Escribir "Ingresa el segundo numero"
			Leer n2;
			t <- n1 - n2;
			Escribir "El resultado es: ",t;
		3:
			Escribir "Multiplicacion";
			Escribir "Ingresa el primer numero"
			Leer n1;
			Escribir "Ingresa el segundo numero"
			Leer n2;
			t <- n1 * n2;
			Escribir "El resultado es: ",t;
		4:	
			Escribir "Division";
			Escribir "Ingresa el primer numero"
			Leer n1;
			Escribir "Ingresa el segundo numero"
			Leer n2;
			t <- n1 / n2;
			Escribir "El resultado es: ",t;
		De Otro Modo:
			Escribir "Opcion no valida";
	Fin Segun
FinAlgoritmo
