//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza el calculo de dos areas de rectangulo y te dice la mayor,
//de el cual los datos son dados por el usuario.

Algoritmo  areaMayorDeDosRectangulos //Declaramos el inicio de el algoritmo.

    definir base,altura,area,base2,altura2,area2 como entero //Definimos los valores a usar como un entero.
    
    escribir "Dame la altura de el rectangulo" //Pedimos al usuario el dato 'altura'.
    leer altura //Guardamos el dato 'altura' en la variable acordada para tal.
    escribir "Dame la base de el rectangulo" //Pedimos al usuario el dato 'base'.
    leer base //Guardamos el dato 'base' en la variable acordada para tal.
    escribir "Dame la altura de el segundo rectangulo" //Pedimos al usuario el dato 'altura2'.
    leer altura2 //Guardamos el dato 'altura2' en la variable acordada para tal.
    escribir "Dame la base de el segundo rectangulo" //Pedimos al usuario el dato 'base2'.
    leer base2 //Guardamos el dato 'base2' en la variable acordada para tal.

    area<-base * altura //realizamos la operacion para declarar el 'area' y lo guardamos en su variable
    area2<-base2 * altura2 //realizamos la operacion para declarar el 'area2' y lo guardamos en su variable

    si area=area2 entonces //verificamos si 'area2' y 'area' son iguales
        escribir "las dos areas son iguales" //indicamos al usuario que son iguales
    sino
        si area<area2 entonces //verificamos si 'area2' es mayor a 'area' 
            escribir "el area ",area," es menor que ",area2 //indicamos que 'area2' es mayor a 'area' 
        sino 
            escribir "el area ",area," es mayor que ",area2 //indicamos que 'area2' es menor a 'area'
        finsi
    finsi
	
FinAlgoritmo //Declaramos el final del algoritmo.