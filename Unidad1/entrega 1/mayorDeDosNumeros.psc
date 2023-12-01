//Algoritmo creado por : Jesus Salvador Garcia Lopez
//Este algoritmo realiza la comprobacion de cual numero es mayor,
//si uno u otro, los datos son dados por el usuario

algoritmo mayorDeDosNumeros//Declaramos el inicio del algoritmo
    definir num1,num2 como entero //Definimos las variables a usar como entero5

    escribir "dame el primer numero "//Pedimos al usuario el primer numero
    leer num1 //Guardamos el numero 1 en la variable 'num1'
    escribir "dame el segundo numero "//Pedimos al usuario el segundo numero
    leer num2 //Guardamos el numero 2 en la variable 'num2'

    si num1=num2 entonces //verificamos si 'num2' y 'num1' son iguales
        escribir "los dos numeros son iguales" //indicamos al usuario que son iguales
    sino
        si num1<num2 entonces //verificamos si 'num2' es mayor a 'num1' 
            escribir "el numero ",num1," es menor que ",num2 //indicamos que 'num2' es mayor a 'num1' 
        sino 
            escribir "el numero ",num1," es mayor que ",num2 //indicamos que 'num1' es mayor a 'num2'
        finsi
    finsi

FinAlgoritmo //Declaramos el final del algoritmo