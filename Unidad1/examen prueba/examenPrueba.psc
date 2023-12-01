//algoritmo creado por:Jesus Salvador Garcia Lopez

algoritmo examenPrueba
    definir numeros,i,contadorMayor,contadorMenor como entero
    para i<-1 hasta 10 hacer
        escribir "dame un numero(puede ser negativo o positivo)" sin saltar
        leer numeros
        si numeros<0 entonces
            contadorMenor<-contadorMenor+1
        sino
            si numeros>0 entonces
                contadorMayor<-contadorMayor+1
            finsi
        finsi
    finpara
    escribir "la cantidad de numeros mayores a 0 que me diste son ",contadorMayor
    escribir "la cantidad de numeros menores a 0 que me diste son ",contadorMenor
finalgoritmo