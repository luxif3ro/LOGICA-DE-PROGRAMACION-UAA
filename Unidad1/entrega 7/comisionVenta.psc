//algoritmo creado por: jesus salvador garcia lopez
algoritmo comisionVenta
    definir venta como real 
    escribir "dame la cantidad vendida este mes para calcular tu comision"
    leer venta
    si venta>=1000.00 entonces
        si venta >= 4999.99 entonces
            si venta>=9999.99 entonces
                si venta>=49999.99 entonces
                    escribir "tu comision es de $",(venta*.10)
                sino
                    escribir "tu comision es de $",(venta*.075)
                finsi
            sino
                escribir "tu comision es de $",(venta*.05)
            finsi
        sino
            escribir "tu comision es de $",(venta*.025)
        finsi
    sino
        escribir "tu comision es de $0"
    finsi
fin algoritmo