//algoritmo creado por: jesus salvador garcia lopez

algoritmo sumaParesPromedioImpares
    definir controlador como cadena
    definir contador,sumaPares,sumaImpares,contadorImpares como entero
    definir promedioImpares como real
    repetir
        escribir "dame el numero a revisar" sin saltar
        leer contador
        si (contador%2)=0 entonces
            sumaPares=sumaPares+contador
            escribir contador," es par"
        sino
            sumaImpares=sumaImpares+contador
            contadorImpares=contadorImpares+1
             escribir contador," es impar"
        finsi
        escribir "Deseas parar con las sumatorias?(si/no)" sin saltar
        leer controlador
        limpiar pantalla
        esperar 1 segundo
    hasta que (controlador='no' o controlador='No')
    escribir "la suma de los pares es ",sumaPares
    escribir "el promedio de los Impares es ",(sumaImpares/contadorImpares)
finalgoritmo