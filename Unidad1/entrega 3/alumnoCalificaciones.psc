//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Determinar si un alumno aprueba a reprueba un curso, sabiendo que aprobara si su promedio de
//tres calificaciones es mayor o igual a 70; reprueba en caso contrario.

Algoritmo alumnoCalificaciones
    Definir i como entero
    Definir calificaciones,promedio como reales
    Escribir "las calificaciones se manejaran del 1->100"
    Para i <- 1 hasta 3 hacer 
        Escribir "Dame la ",i," calificacion"
        leer calificaciones
        promedio <- promedio + calificacion
    finpara
    si (promedio/3)>=70 entonces
        Escribir "Aprobaste"
    sino
        Escribir "Reprobaste"
    finsi
finalgoritmo