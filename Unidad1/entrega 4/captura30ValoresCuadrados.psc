//Algoritmo creado por: Jesus Salvador Garcia Lopez

algoritmo captura30ValoresCuadrados
    definir valor,i,suma como entero

    para i<-1 hasta 30 hacer 
        escribir "Dame el valor numerico" sin saltar
        leer valor 
        escribir "su cuadrado es ",(valor^2)
        suma <- suma + (valor^2)
    finpara
    escribir "La suma total de los cuadrados es ",suma
finalgoritmo