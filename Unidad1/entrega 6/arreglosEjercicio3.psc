//algoritmo creado por: jesus salvador garcia lopez

algoritmo arreglosEjercicio3
    definir tama�oDelArregloX,tama�oDelArregloY,i,j como entero
    definir controlador,primerArreglo  como cadena

    escribir "Puedes decirme cuantos nombres deseas guardar"
    leer tama�oDelArregloY
    escribir "Puedes decirme cuantas edades deseas guardar"
    leer tama�oDelArregloX
	dimensionar primerArreglo[(tama�oDelArregloX+1),tama�oDelArregloY]
    para i<-0 hasta (tama�oDelArregloY-1) hacer
        para j<-0 hasta tama�oDelArregloX hacer
            si j=0 entonces 
                escribir "Dame el nombre a guardar"
                leer primerArreglo[j,i]
            sino
                escribir "Dame la edad a guardar"
				leer primerArreglo[j,i]
            finsi
        finpara
    finpara
    escribir "�deseas ver lo guardado?(si/no)"
    leer controlador
    si controlador = 'si' entonces 
		Limpiar Pantalla
       para i<-0 hasta (tama�oDelArregloY-1) hacer
        para j<-0 hasta tama�oDelArregloX hacer
            escribir primerArreglo[j,i],"  " Sin Saltar
        finpara
		Escribir ""
    finpara
    sino
        escribir "OK, hasta luego"
    finsi
finalgoritmo