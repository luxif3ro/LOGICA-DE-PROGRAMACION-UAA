//algoritmo creado por: Jesus Salvador Garcia Lopez

Algoritmo salario15Empleados
    definir i como entero
    definir sueldo,pagoIntitucional como real

    para i<-1 hasta 15 hacer
        escribir "¿Cuanto se debe pagar al profesor ",i," ?"sin saltar
        leer sueldo
        pagoIntitucional<-pagoIntitucional+sueldo
        limpiar pantalla
    finpara
    escribir "El total a pagar de la institucion es ",pagoIntitucional
finalgoritmo