Proceso promedioArreglo
	//definir variables a usar
	definir arreglo Como Real;
	Definir  tamañoArreglo,i Como Entero;
	
	//pedir el tamaño a usar del arreglo
	Escribir  "de que tamaño quieres que sea el arreglo" Sin Saltar;
	leer tamañoArreglo;
	Dimensionar arreglo[tamañoArreglo];//Dimensionar  el arreglo segun el tamaño dado por el usuario
	
	//empezar a llenar el arreglo segun datos dados por el usuario
	Para i<-0 Hasta (tamañoArreglo-1)
		Escribir  "Dame el valor de la posicion ",(i+1) Sin Saltar;
		Leer arreglo[i];
	FinPara
	
	Escribir "El promedio de el arreglo es ",promedio(arreglo,tamañoArreglo);
	
FinProceso

SubProceso resultado <- promedio(arreglo,tamañoArreglo)
	Definir sumaArreglo Como Real;
	Definir i Como Entero;
	Para i<-0 Hasta (tamañoArreglo-1)
		sumaArreglo<-sumaArreglo+arreglo[i];
	FinPara
	resultado<-sumaArreglo/tamañoArreglo;
	
FinSubProceso
