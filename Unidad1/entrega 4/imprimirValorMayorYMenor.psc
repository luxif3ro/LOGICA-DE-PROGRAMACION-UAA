//Algoritmo creado por: Jesus Salvador Garcia Lopez

algoritmo imprimirValorMayorYMenor
    definir controlador como cadena
    definir numero,valorMayor,valorMenor como entero

    repetir
        escribir "Dame el valor a revisar "sin saltar
        leer numero
        si valorMenor=0 y valorMayor=0 entonces
            valorMayor<-numero
            valorMenor<-numero
        finsi
        si valorMenor>numero entonces
            valorMenor<-numero
        finsi
        si valorMayor<numero entonces
            valorMayor<-numero
        finsi
        escribir "deseas continuar?(si/no)" sin saltar 
        leer controlador
        //esperar 1 segundo
        //limpiar pantalla
    hasta que (controlador='no' o controlador= 'No')
    escribir "el mayor valor dado es ",valorMayor
    escribir "el menor valor dado es ",valorMenor
finalgoritmo