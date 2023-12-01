//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas
//o mas se aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un
//descuento del 10%

algoritmo camisasDescuento
    definir camisas,compra,total como reales

    Escribir "cuantas camisas son en total"
    leer camisas
    Escribir "cual es el total de compra"
    leer compra
    si camisas >= 3 entonces
        total <- compra * .8
    sino 
        total <- compra * .9
    finsi
    Escribir "el total con el descuento es de $",total
finalgoritmo