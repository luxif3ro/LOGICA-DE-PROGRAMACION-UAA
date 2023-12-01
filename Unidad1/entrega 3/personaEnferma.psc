//Algoritmo creado por: Jesus Salvador Garcia Lopez
//Una persona enferma, que pesa 70 Kg., se encuentra en reposo y desea saber cuantas calorías
//consume su cuerpo durante todo el tiempo que realiza una misma actividad. Las actividades que
//tiene permitido realizar son únicamente dormir o estar sentado en reposo. Los datos que tiene son
//que estando dormido consume 1.08 calorías por minuto y estando sentado en reposo consume 1.66
//calorías por minuto.

Algoritmo personaEnferma
    definir gastoTotal,minutosDormido,minutosSentado como reales
    Escribir "cuantos minutos dormiste?"
    leer minutosDormido
    Escribir "cuantos minutos sentado?"
    leer minutosSentado

    gastoTotal <- (minutosDormido*1.08)+(minutosSentado*1.66)

    Escribir "el gasto calorico diario es de ",gastoTotal," calorías"
finalgoritmo