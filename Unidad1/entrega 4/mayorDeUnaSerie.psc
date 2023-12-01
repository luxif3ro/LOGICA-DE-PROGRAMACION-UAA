//algoritmo creado por: Jesus Salvador Garcia Lopez

algoritmo sumaDeUnaSerie
    definir controlador como cadena
    definir mayorValor,secuencia,valores,suma,inicio,limite como entero

    escribir "Dame el valor desde el que inicia la serie " sin saltar
    leer inicio
    escribir "Dame hasta que posicion es la serie" sin saltar
    leer limite
    escribir "Dame el valor que va con la secuencia (por ejemplo si va de 3 en 3,dame 3,si es negativo ponerlo como -3) " sin saltar
    leer secuencia
    escribir "Dame con que operacion hacer la secuencia(si es una multiplicacion dame(1),si es suma(2),si es resta(3))" sin saltar
    leer operacion
    para i<-1 hasta limite hacer
		Segun operacion Hacer
			Caso 1:
				valores<-inicio*secuencia
			Caso 2:
				valores<-inicio+secuencia
			Caso 3:
				valores<-inicio-secuencia
			De Otro Modo:
				escribir "No se pudo realizar la serie"
		Fin Segun
		si mayorValor<valor Entonces
			mayorValor<-valor
		FinSi
        inicio<-valores
	FinPara
	Escribir "el mayor Valor de la secuencia es ",mayor valor
FinAlgoritmo
