Proceso ordenamientoDeVector
	Definir vector,i,tamaño Como Entero;
	Escribir "dame el tamaño del arreglo ",Sin Saltar;
	Leer  tamaño;
	Dimensionar vector[tamaño];
	
	Para i<-0 Hasta (tamaño-1)
		Escribir  "dame el valor de la posicion ",(i+1) Sin Saltar;
		Leer vector[i];
	FinPara
	Escribir "Ordenado por metodo burbuja";
	burbuja(vector,tamaño);
	Escribir "";
	Escribir "Ordenado por metodo seleccion";
	seleccion(vector,tamaño);
	Escribir "";
FinProceso

SubProceso burbuja(vector,tamaño)
	Definir i, j, temp Como Entero;
    
    Para i <- 0 Hasta tamaño - 2
        Para j <- 0 Hasta tamaño - 1 - i
            Si vector[j] > vector[j] Entonces
                temp <- vector[j];
                vector[j] = vector[j + 1];
                vector[j + 1] = temp;
            FinSi
        FinPara
    FinPara
    
    Escribir "Lista ordenada:";
    Para i <- 0 Hasta tamaño - 1
        Escribir vector[i],"  " Sin Saltar;
    FinPara
FinSubProceso

SubProceso seleccion(vector,tamaño)
    Definir n, i, j, min, temp Como Entero
    Para i = 0 Hasta (tamaño-2)
        min = i
        Para j = i + 1 Hasta (tamaño-1)
            Si vector[j] < vector[min] Entonces
                min = j
            FinSi
        FinPara
		
        Si min <> i Entonces
            temp = vector[i]
            vector[i] = vector[min]
            vector[min] = temp
        FinSi
    FinPara
	
    Escribir "Lista ordenada:"
    Para i = 0 Hasta (tamaño-1)
        Escribir vector[i],"  " Sin Saltar
    FinPara
FinSubProceso
