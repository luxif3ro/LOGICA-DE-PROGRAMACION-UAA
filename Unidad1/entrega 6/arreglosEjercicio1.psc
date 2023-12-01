//algoritmo creado por: jesus salvador garcia lopez

algoritmo arreglosEjercicio1
    definir tama�oDelArreglo,i,primerArreglo como entero
    definir controlador como cadena

    escribir "Puedes darme el tama�o del arreglo"
    leer tama�oDelArreglo
	dimensionar primerArreglo[tama�oDelArreglo]
    para i<-0 hasta (tama�oDelArreglo-1) hacer
        escribir "Dame el valor a guardar en la posicion ",i," del arreglo" sin saltar
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