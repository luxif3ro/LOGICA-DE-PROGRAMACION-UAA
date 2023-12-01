#include <stdio.h>

// Funci�n para intercambiar dos elementos del vector
void intercambiar(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main()
{
    int vector[10];
    int i, j, min_idx;

    // Llenar el vector con n�meros enteros (pueden ser ingresados por el usuario)
    printf("Ingrese 10 numeros enteros:\n");
    for (i = 0; i < 10; i++)
    {
        scanf("%d", &vector[i]);
    }

    // Mostrar el vector desordenado
    printf("Vector desordenado: ");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", vector[i]);
    }
    printf("\n");

    // Algoritmo de ordenamiento por selecci�n
    for (i = 0; i < 10 - 1; i++)
    {
        min_idx = i; // Suponemos que el elemento actual es el m�nimo

        // Buscar el �ndice del elemento m�nimo en el resto del vector
        for (j = i + 1; j < 10; j++)
        {
            if (vector[j] < vector[min_idx])
            {
                min_idx = j;
            }
        }

        // Intercambiar el elemento m�nimo con el elemento actual
        intercambiar(&vector[i], &vector[min_idx]);
    }

    // Mostrar el vector ordenado
    printf("Vector ordenado: ");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", vector[i]);
    }
    printf("\n");

    return 0;
}
