Proceso promedioArreglo
	//definir variables a usar
	definir arreglo Como Real;
	Definir  tama�oArreglo,i Como Entero;
	
	//pedir el tama�o a usar del arreglo
	Escribir  "de que tama�o quieres que sea el arreglo" Sin Saltar;
	leer tama�oArreglo;
	Dimensionar arreglo[tama�oArreglo];//Dimensionar  el arreglo segun el tama�o dado por el usuario
	
	//empezar a llenar el arreglo segun datos dados por el usuario
	Para i<-0 Hasta (tama�oArreglo-1)
		Escribir  "Dame el valor de la posicion ",(i+1) Sin Saltar;
		Leer arreglo[i];
	FinPara
	
	Escribir "El promedio de el arreglo es ",promedio(arreglo,tama�oArreglo);
	
FinProceso

SubProceso resultado <- promedio(arreglo,tama�oArreglo)
	Definir sumaArreglo Como Real;
	Definir i Como Entero;
	Para i<-0 Hasta (tama�oArreglo-1)
		sumaArreglo<-sumaArreglo+arreglo[i];
	FinPara
	resultado<-sumaArreglo/tama�oArreglo;
	
FinSubProceso
