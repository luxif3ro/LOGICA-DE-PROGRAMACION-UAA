//algoritmo creado por:jesus salvador garcia lopez

algoritmo practicaExamen3
    definir costoMaterias,totalCursar como entero;
    definir promedioAlumno como real;

    escribir "dame el costo por materia";
    leer costoMaterias;
    escribir "dame el total de materias a cursar";
    leer totalCursar;
    escribir "dame el promedio del alumno";
    leer promedioAlumno;
    si promedioAlumno>=9 entonces
        escribir "el total a pagar es $",((totalCursar*costoMaterias)*.70);
    sino
        escribir "el total a pagar es $",((totalCursar*costoMaterias)*1.1);
    finsi
finalgoritmo