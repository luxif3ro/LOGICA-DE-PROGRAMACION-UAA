//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza una serie fibonacci hasta la posicion dada por el usuario.

Algoritmo  areaRectangulo //Declaramos el inicio de el algoritmo.

    definir anterior,posicion,suma,i,valores como entero //Definimos los valores a usar como un entero.
    
	valores<-0
	anterior<-1
    escribir "dame hasta que posicion hacer la serie"
    leer posicion

    para i<-1 hasta posicion hacer
        escribir valores
        suma<-valores+anterior
        valores<-anterior
        anterior<-suma

    finpara
	
FinAlgoritmo //Declaramos el final del algoritmo.