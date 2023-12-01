//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza la lista de numeros pares en un rango,
//de el cual es dado por el usuario.

Algoritmo  areaCirculo //Declaramos el inicio de el algoritmo.
    definir i,rango,par como entero //Definimos los valores a usar como un entero.
	
    escribir "Dame el rango de la lista" //Pedimos al usuario el dato 'radio'.
    leer rango //Guardamos el dato 'radio' en la variable acordada para tal.

    para i<-1 hasta rango hacer
        si (i%2)=0 entonces
            escribir i //Le mostramos al usuario el numero par
			Esperar  1 segundo //declaramos detenernos por 1 segundo antes de mostrar el siguiente dato
        finsi
	FinPara
	
	
FinAlgoritmo //Declaramos el final del algoritmo.