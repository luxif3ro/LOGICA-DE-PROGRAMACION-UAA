#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int vector[10];
    int i, valorBuscado;

    // Inicializamos el generador de n�meros aleatorios con una semilla
    srand(time(NULL));

    // Llenar el vector con n�meros aleatorios entre 1 y 10
    for (i = 0; i < 10; i++)
    {
        vector[i] = rand() % 10 + 1;
    }

    // Mostrar el contenido del vector
    printf("Vector: ");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", vector[i]);
    }
    printf("\n");

    // Solicitar al usuario el valor a buscar
    printf("Ingrese el valor a buscar: ");
    scanf("%d", &valorBuscado);

    // B�squeda con un ciclo 'while' (se detiene en la primera coincidencia)
    i = 0;
    while (i < 10)
    {
        if (vector[i] == valorBuscado)
        {
            printf("Se encontro %d en la casilla %d.\n", valorBuscado, i);
            break;
        }
        i++;
    }
    if (i == 10)
    {
        printf("El valor %d no se encontro en el vector.\n", valorBuscado);
    }

    // B�squeda con un ciclo 'for' (imprime todas las casillas donde se encuentra el n�mero)
    int encontrado = 0;
    for (i = 0; i < 10; i++)
    {
        if (vector[i] == valorBuscado)
        {
            printf("Se encontro %d en la casilla %d.\n", valorBuscado, i);
            encontrado = 1;
        }
    }
    if (!encontrado)
    {
        printf("El valor %d no se encontro en el vector.\n", valorBuscado);
    }

    return 0;
}
