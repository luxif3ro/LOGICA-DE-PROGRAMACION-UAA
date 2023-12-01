#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int vector[50];
    int countMultiplesOf7 = 0;
    int sumMultiplesOf7 = 0;
    int i; // Declaración de i aquí

    // Inicializamos la semilla para generar números aleatorios
    srand(time(NULL));

    // Llenamos el vector con números aleatorios de 1 a 100
    for (i = 0; i < 50; i++) {
        vector[i] = rand() % 100 + 1;
    }

    // Recorremos el vector para contar y sumar los múltiplos de 7
    for (i = 0; i < 50; i++) {
        if (vector[i] % 7 == 0) {
            countMultiplesOf7++;
            sumMultiplesOf7 += vector[i];
        }
    }

    // Mostramos los resultados en pantalla
    printf("Contenido del vector:\n");
    for (i = 0; i < 50; i++) {
        printf("%d ", vector[i]);
    }
    printf("\n");

    printf("Cantidad de multiplos de 7 en el vector: %d\n", countMultiplesOf7);
    printf("Suma de los multiplos de 7 en el vector: %d\n", sumMultiplesOf7);

    return 0;
}

