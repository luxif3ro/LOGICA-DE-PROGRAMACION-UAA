Proceso promedioArreglo
	//definir variables a usar
	definir arreglo Como Real;
	Definir  tamaņoArreglo,i Como Entero;
	
	//pedir el tamaņo a usar del arreglo
	Escribir  "de que tamaņo quieres que sea el arreglo" Sin Saltar;
	leer tamaņoArreglo;
	Dimensionar arreglo[tamaņoArreglo];//Dimensionar  el arreglo segun el tamaņo dado por el usuario
	
	//empezar a llenar el arreglo segun datos dados por el usuario
	Para i<-0 Hasta (tamaņoArreglo-1)
		Escribir  "Dame el valor de la posicion ",(i+1) Sin Saltar;
		Leer arreglo[i];
	FinPara
	
	Escribir "El promedio de el arreglo es ",promedio(arreglo,tamaņoArreglo);
	
FinProceso

SubProceso resultado <- promedio(arreglo,tamaņoArreglo)
	Definir sumaArreglo Como Real;
	Definir i Como Entero;
	Para i<-0 Hasta (tamaņoArreglo-1)
		sumaArreglo<-sumaArreglo+arreglo[i];
	FinPara
	resultado<-sumaArreglo/tamaņoArreglo;
	
FinSubProceso
