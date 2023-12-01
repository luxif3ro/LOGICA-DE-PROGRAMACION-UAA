//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Escriba un algoritmo que lea dos números y los imprima en forma ascendente

algoritmo leerDosNumeros
    definir numero1 , numero2 como enteros
    Escribir "dame el primer numero"
    leer numero1
    Escribir "dame el segundo numero"
    leer numero2
    si numero1=numero2 entonces
        Escribir "los numeos son iguales"
    sino 
        si numero1<numero2 entonces
            Escribir numero1
            Escribir numero2
        sino 
            Escribir numero2
            Escribir numero1
        finsi
    finsi
finalgoritmo