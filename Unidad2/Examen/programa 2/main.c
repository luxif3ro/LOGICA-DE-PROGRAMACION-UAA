#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int vector1[10],i;
    int vector2[10];
    int vector3[10];

    // Inicializamos la semilla para generar números aleatorios
    srand(time(NULL));

    // Llenamos los dos primeros vectores con números aleatorios de 1 a 10
    for ( i = 0; i < 10; i++) {
        vector1[i] = rand() % 10 + 1;
        vector2[i] = rand() % 10 + 1;
    }

    // Calculamos la suma de los dos primeros vectores y la almacenamos en el tercer vector
    for ( i = 0; i < 10; i++) {
        vector3[i] = vector1[i] + vector2[i];
    }

    // Imprimimos los resultados
    printf("Contenido del vector 1: ");
    for ( i = 0; i < 10; i++) {
        printf("%d ", vector1[i]);
    }
    printf("\n");

    printf("Contenido del vector 2: ");
    for ( i = 0; i < 10; i++) {
        printf("%d ", vector2[i]);
    }
    printf("\n");

    printf("Suma en el vector 3: ");
    for ( i = 0; i < 10; i++) {
        printf("%d ", vector3[i]);
    }
    printf("\n");

    return 0;
}

