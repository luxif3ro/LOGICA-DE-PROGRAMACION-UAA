#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Función para intercambiar dos elementos del vector
void intercambiar(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main() {
    int vector[10];
    int i, j;

    // Inicializamos el generador de números aleatorios con una semilla
    srand(time(NULL));

    // Llenar el vector con números aleatorios entre 1 y 10
    for (i = 0; i < 10; i++) {
        vector[i] = rand() % 10 + 1;
    }

    // Mostrar el vector desordenado
    printf("Vector desordenado: ");
    for (i = 0; i < 10; i++) {
        printf("%d ", vector[i]);
    }
    printf("\n");

    // Algoritmo de ordenamiento de burbuja
    for (i = 0; i < 10 - 1; i++) {
        for (j = 0; j < 10 - i - 1; j++) {
            if (vector[j] > vector[j + 1]) {
                // Intercambiar los elementos si están en el orden incorrecto
                intercambiar(&vector[j], &vector[j + 1]);
            }
        }
    }

    // Mostrar el vector ordenado
    printf("Vector ordenado: ");
    for (i = 0; i < 10; i++) {
        printf("%d ", vector[i]);
    }
    printf("\n");

    return 0;
}

