//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza la verificacion de un numero primo,
//el cual es dado por el usuario.

Algoritmo  areaRectangulo //Declaramos el inicio de el algoritmo.

    definir divisores,num,i como entero //Definimos los valores a usar como un entero.
    
    escribir "Dame el numero a comprobar" //Pedimos al usuario el dato 'num'.
    leer num //Guardamos el dato 'num' en la variable acordada para tal.

    para i<-1 hasta num hacer 
        si (num%i)=0 entonces
            divisores<-divisores+1
        finsi
    finpara

    si divisores=2 entonces 
        escribir num , " es primo"
    sino 
        escribir num, " no es primo"
	FinSi
	
FinAlgoritmo //Declaramos el final del algoritmo.