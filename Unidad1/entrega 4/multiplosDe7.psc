//Algoritmo creado por: Jesus Salvador Garcia Lopez
Algoritmo multiploDe7
    definir residuo,contador,chico como entero
    definir controlador como cadena
    Repetir
    escribir "Dame el numero a revisar" sin saltar
    leer numero
    residuo<-numero%7
    si residuo=0 entonces
        si numero < chico entonces
            chico<-numero
        finsi
        contador<-contador+1
    fin si
    escribir "¿quieres seguir dando numeros?(si/no)" sin saltar 
    leer controlador
    Hasta que (controlador="No" o controlador="no")
    si contador=0 entonces
        limpiar pantalla
        escribir "ningun numero que me diste es multiplo de 7"
    sino
        escribir chico, " es el multiplo menor" 
    finsi
finalgoritmo