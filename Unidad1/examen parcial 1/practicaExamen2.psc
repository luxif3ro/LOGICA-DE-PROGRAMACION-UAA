//algoritmo creado por:jesus salvador garcia lopez

algoritmo practicaExamen2
    definir totalCompra,totalPago como reales;
    definir valorAleatorio como real;

    valorAleatorio<-aleatorio(1,100);
    escribir "dame el total de la compra sin el descuento";
    leer totalCompra;
    si valorAleatorio<74 entonces
        totalPago<-totalCompra*0.85;
        escribir "el total a pagar es ",totalPago;
    sino
        totalPago<-totalCompra*0.8;
        escribir "el total a pagar es ",totalPago;
    finsi
finalgoritmo