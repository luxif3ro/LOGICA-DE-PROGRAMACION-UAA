//algoritmo creado por : jesus salvador garcia lopez

algoritmo tablaNumeros

    definir cantidad,matriz,i,j como enteros
    escribir "dame la cantidad de filas de la tabla"
    leer cantidad
    dimensionar matriz[3,cantidad]
    para i<-0 hasta 2 hacer
        para j<-0 hasta (cantidad-1) hacer
            si i=0 entonces 
                matriz[i,j]<-(j+1)
            sino
                si i=1 entonces
                    matriz[i,j]<-(j+1)^2
                sino 
                    matriz[i,j]<-(j+1)^3
                finsi
            finsi
        finpara
    finpara
	Escribir  "numero" Sin Saltar
	Escribir  "  cuadrado	" Sin Saltar
	Escribir  "	  cubo" 
    para j<-0 hasta (cantidad-1) hacer
        para i<-0 hasta 2 hacer
            escribir matriz[i,j],"         "sin saltar
        finpara
		Escribir ""
    finpara
finalgoritmo

