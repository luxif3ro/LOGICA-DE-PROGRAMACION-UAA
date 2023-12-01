//algoritmo creado por: Jesus Salvador Garcia Lopez
algoritmo tablas
    definir tabla,i,limite como entero
    escribir "De que numero quieres hacer la tabla"
    leer tabla
    escribir "Hasta que numero quieres hacer la tabla"
    leer limite
	i<-1
	Repetir
		escribir tabla," x ",i," = ",(tabla*i)
		Esperar  1 Segundos
		i<-i+1
	Hasta Que i>limite
finalgoritmo