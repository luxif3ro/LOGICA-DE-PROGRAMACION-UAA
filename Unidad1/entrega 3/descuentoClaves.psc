//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Hacer un algoritmo que imprima precio original y el precio con descuento de un art?culo. El
//descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el
//descuento en del 20% (solo existen dos claves).

Algoritmo descuentoClaves
    definir precioOrig,clave como entero

    escribir "Dame el precio original"
    leer precioOrig
    escribir "Dame la clave de el descuento"
    leer clave
    segun clave
        caso 1:
            limpiar pantalla
            escribir "el precio original es: ",precioOrig
            escribir "el precio con descuento es: ",(precioOrig*.9)
        caso 2:
            limpiar pantalla
            escribir "el precio original es: ",precioOrig
            escribir "el precio con descuento es: ",(precioOrig*.8)
    FinSegun
	
finalgoritmo