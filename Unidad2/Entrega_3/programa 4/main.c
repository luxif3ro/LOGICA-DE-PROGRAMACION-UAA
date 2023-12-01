#include <stdio.h>

// Función de búsqueda binaria
int busquedaBinaria(int vector[], int valorBuscado, int inicio, int fin) {
    while (inicio <= fin) {
        int medio = inicio + (fin - inicio) / 2;

        if (vector[medio] == valorBuscado) {
            return medio; // Se encontró el valor
        }
        if (vector[medio] < valorBuscado) {
            inicio = medio + 1; // Actualiza el índice de inicio
        } else {
            fin = medio - 1; // Actualiza el índice de fin
        }
    }

    return -1; // Valor no encontrado en el vector
}

int main() {
    int vector[50];
    int valorBuscado, resultado,i;

    // Llenar el vector con números enteros ordenados
    for (i = 0; i < 50; i++) {
        vector[i] = i * 2; // Números pares
    }

    // Solicitar al usuario el valor a buscar
    printf("Ingrese el valor a buscar: ");
    scanf("%d", &valorBuscado);

    // Realizar la búsqueda binaria
    resultado = busquedaBinaria(vector, valorBuscado, 0, 49);

    if (resultado != -1) {
        printf("El valor %d se encontro en la casilla %d.\n", valorBuscado, resultado);
    } else {
        printf("El valor %d no se encontro en el vector.\n", valorBuscado);
    }

    return 0;
}

