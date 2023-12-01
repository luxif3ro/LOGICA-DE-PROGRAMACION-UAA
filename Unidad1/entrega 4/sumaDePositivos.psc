//Algoritmo creado por:Jesus Salvador Garcia Lopez

algoritmo sumaDePositivos
    definir numero,suma como enteros
    definir controlador como cadena
    controlador<-'si'
    Repetir
        escribir "Dame el valor entero a sumar "sin saltar
        leer numero
        si numero>0 entonces
            suma<-suma + numero
        finsi
    hasta que (controlador='No' o controlador='no')
    escribir "La suma total de los mumeros enteros positivos es ",suma
finalgoritmo