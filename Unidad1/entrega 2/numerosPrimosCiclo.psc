//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza la verificacion de numeros primos en un ciclo.

Algoritmo  areaRectangulo //Declaramos el inicio de el algoritmo.

    definir divisores,num,i como entero //Definimos los valores a usar como un entero.
    
    para num<-1 hasta 100 hacer
        para i<-1 hasta num hacer 
            si (num%i)=0 entonces
                divisores<-divisores+1
            finsi
        finpara

        si divisores=2 entonces 
            escribir num
            esperar 1 segundo
        FinSi
        divisores<-0
    finpara
	
FinAlgoritmo //Declaramos el final del algoritmo.