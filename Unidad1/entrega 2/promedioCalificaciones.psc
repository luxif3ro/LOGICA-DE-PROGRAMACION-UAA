//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza un promedio por calificaciones dadas por el usuario.

Algoritmo  areaRectangulo //Declaramos el inicio de el algoritmo.
	
	Definir  promedio Como Real
    definir i,calificacion,suma como entero //Definimos los valores a usar como un entero.

    para i<-1 hasta 5 hacer
        escribir "dame la ",i," calificacion"
        leer calificacion
        suma<- suma + calificacion
    finpara

    promedio <- suma/5

    escribir "el promedio es ", promedio
	
FinAlgoritmo //Declaramos el final del algoritmo.