//algoritmo creado por: jesus salvador garcia lopez

algoritmo arreglosEjercicio2
    definir tama�oDelArreglo,i como entero
    definir primerArreglo, controlador como cadena

    escribir "Cuantos nombres deseas guardar?"
    leer tama�oDelArreglo
	dimensionar primerArreglo[tama�oDelArreglo]
    para i<-0 hasta (tama�oDelArreglo-1) hacer
        escribir "Dame el nombre a guardar en la posicion ",i," del arreglo" sin saltar
        leer primerArreglo[i]
    finpara
    escribir "�deseas ver lo guardado?(si/no)"
    leer controlador
    si controlador = 'si' entonces 
		Limpiar Pantalla
        para i<-0 hasta (tama�oDelArreglo-1) hacer
            escribir primerArreglo[i]
        finpara
    sino
        escribir "OK, hasta luego"
    finsi
finalgoritmo