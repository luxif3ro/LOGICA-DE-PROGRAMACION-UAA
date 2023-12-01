//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza el calculo de el area de un circulo,
//de el cual los datos son dados por el usuario.

Algoritmo  areaCirculo //Declaramos el inicio de el algoritmo.
    definir area como real //Definimos los valores a usar como un real.
    definir radio como entero //Definimos los valores a usar como un entero.
	
    escribir "Dame el radio de el circulo" //Pedimos al usuario el dato 'radio'.
    leer radio //Guardamos el dato 'radio' en la variable acordada para tal.

    area<- pi * (radio^2) //realizamos la operacion para declarar el 'area' y lo guardamos en su variable

    escribir "El area del circulo es: ",area //Le mostramos al usuario el resultado obtenido
	
FinAlgoritmo //Declaramos el final del algoritmo.