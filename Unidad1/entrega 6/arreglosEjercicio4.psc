//algoritmo creado por:jesus salvador garcia lopez

algoritmo arreglosEjercicio4
    definir vectorArticulo como cadena 
    definir i,j,matrizArticulos,sumaArticulos,recaudacionSucursal,mayorRecaudacion,numeroSucursal como entero
    dimensionar vectorArticulo[5],matrizArticulos[4,5]

    para i<-0 hasta 4 hacer
        para j<-0 hasta 3 hacer
            matrizArticulos[j,i]<-aleatorio(0,200)
        finpara
        escribir "Dame el nombre del articulo ",(i+1) sin saltar
        leer vectorArticulo[i]
    finpara

    escribir "los datos son :"
	
    para i<-0 hasta 4 hacer
        escribir vectorArticulo[i],"  " sin saltar
        para j<-0 hasta 3 hacer
            escribir matrizArticulos[j,i],"  " sin saltar
        finpara
        escribir ""
    finpara
	Escribir "desea ver reportes sobre la informacion dada?(presione ENTER si es asi)"
    esperar tecla

    escribir "TOTAL DE VENDIDO DE CADA ARTICULO"
    para i<-0 hasta 4 hacer
        sumaArticulos<-0
        escribir "Del articulo ", vectorArticulo[i]," se vendieron en total: " sin saltar
        para j<-0 hasta 3 hacer
             sumaArticulos<-sumaArticulos+matrizArticulos[j,i]
        finpara
        escribir sumaArticulos
    finpara
	
    escribir "TOTAL DE VENDIDO DE CADA ARTICULO EN LA SUCURSAL 2"
    para i<-0 hasta 4 hacer
        escribir "Del articulo ", vectorArticulo[i]," se vendieron en total: " ,matrizArticulos[1,i]
    finpara
	
	escribir "Del articulo ", vectorArticulo[2],"en la sucursal 1 se vendieron en total: " ,matrizArticulos[0,2]
	
	escribir "RECAUDACION TOTAL DE CADA SUCURSAL"
	para i<-0 hasta 3 hacer
        sumaArticulos<-0
		Escribir  "la sucursal ",(i+1), "tuvo de recaudacion " Sin Saltar
        para j<-0 hasta 4 hacer
			sumaArticulos<-sumaArticulos+matrizArticulos[i,j]
        finpara
		si sumaArticulos>mayorRecaudacion Entonces
			mayorRecaudacion<-sumaArticulos
			numeroSucursal<-i+1
		FinSi
        escribir sumaArticulos
    finpara
	
	para i<-0 hasta 3 hacer
        para j<-0 hasta 4 hacer
			sumaArticulos<-sumaArticulos+matrizArticulos[i,j]
        finpara
    finpara
	Escribir  "la recaudacion total de la empresa es de: ",sumaArticulos
		
	Escribir  "la sucursal con mayor recaudacion fue la sucursal ",numeroSucursal," con ",mayorRecaudacion
finalgoritmo