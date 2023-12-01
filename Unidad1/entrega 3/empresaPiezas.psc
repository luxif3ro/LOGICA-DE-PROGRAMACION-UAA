//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Una empresa quiere hacer una compra de varias piezas de la misma clase a una f�brica de
//refacciones. La empresa, dependiendo del monto total de la compra, decidir� que hacer para pagar
//al fabricante. Si el monto total de la compra excede de $500 000 la empresa tendr� la capacidad de
//invertir de su propio dinero un 55% del monto de la compra, pedir prestado al banco un 30% y el
//resto lo pagar� solicitando un cr�dito al fabricante. Si el monto total de la compra no excede de $500
//000 la empresa tendr� la capacidad de invertir de su propio dinero un 70% y el restante 30% lo
//pagara solicitando cr�dito al fabricante. El fabricante cobra por concepto de intereses un 20% sobre
//la cantidad que se le pague a cr�dito.

Algoritmo empresaPiezas
    definir pagoTotal,propio,banco,credito,interes como real
    escribir "cual es la cantidad total de compra"
    leer pagoTotal
    limpiar pantalla
    si pagoTotal <=500000 entonces
        propio <- pagoTotal*.55
        banco <- pagoTotal*.30
        credito <-pagoTotal*.15
        interes <- credito*.2
        escribir "el dinero propio a invertir es: $",propio
        escribir "el dinero a pedir al banco es: $",banco
        escribir "el dinero a credito es: $",credito
        escribir "el interes del credito es: $",interes
    sino
        propio <- pagoTotal*.70
        credito <-pagoTotal*.30
        interes <- credito*.2
        escribir "el dinero propio a invertir es: $",propio
        escribir "el dinero a credito es: $",credito
        escribir "el interes del credito es: $",interes
    finsi
finalgoritmo