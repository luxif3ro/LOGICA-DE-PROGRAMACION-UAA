#include <stdio.h>

int main() {
    int matrizA[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    int matrizB[3][3] = {{9, 8, 7}, {6, 5, 4}, {3, 2, 1}};
    int matrizResultado[3][3];
    int i, j, k;

    // Inicializar la matriz resultado con ceros
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            matrizResultado[i][j] = 0;
        }
    }

    // Realizar la multiplicación de matrices
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            for (k = 0; k < 3; k++) {
                matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j];
            }
        }
    }

    // Mostrar la matriz resultado
    printf("Matriz Resultado:\n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            printf("%d ", matrizResultado[i][j]);
        }
        printf("\n");
    }

    return 0;
}

