//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Un obrero necesita calcular su salario semanal, el cual se obtiene de la siguiente manera:
//Si trabaja 40 horas o menos se le paga $16 por hora
//Si trabaja mas de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
//extra.

algoritmo sueldoObrero
    definir horas,sueldo como reales
    Escribir "Dime cuantas horas trabajaste esta semana"
    leer horas
    si horas<40 entonces
        sueldo <- 40*16
    sino
        sueldo <- ((horas-40)*20)+(40*16)
    finsi
finalgoritmo