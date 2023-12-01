//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Un hombre desea saber cuanto dinero se genera por concepto de intereses sobre la cantidad que
//tiene en inversi�n en el banco. El decidir� reinvertir los intereses siempre y cuando estos excedan a
//$7000, y en ese caso desea saber cuanto dinero tendr� finalmente en su cuenta. Suponga que el
//inter�s que cobra el banco es un dato desconocido.

Algoritmo interesBanco
    Definir guardado,interes,total como reales

    Escribir "Dame la cantidad que tienes invertida en el banco"
    Leer guardado
    Escribir "Dame el interes que te va a aplicar el banco"
	leer interes
	
    total <- guardado + (guardado*(interes/100))

    si total>=7000 entonces 
        Escribir "si reinvertir"
    sino
        Escribir "no reinvertir"
    finsi

finalgoritmo