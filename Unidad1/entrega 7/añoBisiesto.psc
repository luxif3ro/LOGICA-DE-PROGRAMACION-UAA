//algoritmo creado por : jesus salvador garcia lopez 

algoritmo añoBisiesto 

    definir año como entero
    definir controlador como cadena

    repetir
        limpiar pantalla
        escribir "Dame el año que quieras ver si es bisiesto"
        leer año
        si (año%100) <> 0 entonces
            si (año%4) = 0 entonces
                escribir año, " es un año bisiesto"
            finsi
        sino
            si (año%400)=0 entonces 
                escribir año, " es un año bisiesto"
            finsi
        finsi
        escribir "¿deseas revisar otro año?(si/no)"
        leer controlador
    hasta que(controlador='no' o controlador='NO')
finalgoritmo