//algoritmo creado por:jesus salvador garcia lopez

algoritmo practicaExamen1
    definir sumaPositivos, productoNegativos, numero como entero;
    definir controlador como cadena;
    productoNegativos<-1
    repetir 
        escribir "Dame el numero a revisar " sin saltar;
        leer numero;
        si numero = 0 entonces
            escribir "me diste un 0, este no lo cuento";
        sino
            si numero>0 entonces
                sumaPositivos<-sumaPositivos+numero;
            sino
                productoNegativos<-productoNegativos*numero;
            finsi
        finsi
        escribir "¿deseas continuar revisando numeros?(si/no)" sin saltar;
        leer  controlador;
    hasta que (controlador='No' o controlador='no' )
    escribir "el producto de los negativos es ",productoNegativos;
    escribir "la suma de los positivos es ",sumaPositivos;
    finalgoritmo