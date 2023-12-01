#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	int numSocios,i,deporte;
	printf("Ingrese la cantidad de socios a procesar: ");
	scanf("%d", &numSocios);

	int deporteCount[5] = {0}; // Un arreglo para contar cuántos jugadores hay por deporte
	int edadSum[5] = {0};	   // Un arreglo para sumar las edades por deporte

	for ( i = 1; i <= numSocios; i++)
	{
		int numSocio, edad, deporte;
		char apellidoNombre[100];

		printf("\nSocio %d:\n", i);
		printf("Numero de socio: ");
		scanf("%d", &numSocio);

		printf("Apellido y nombre: ");
		scanf(" %99[^\n]", apellidoNombre);

		printf("Edad: ");
		scanf("%d", &edad);

		printf("Tipo de deporte (1 tenis, 2 squash, 3 futbol, 4 frontenis, 5 natacion): ");
		scanf("%d", &deporte);

		if (deporte >= 1 && deporte <= 5)
		{
			deporteCount[deporte - 1]++;  // Restar 1 para ajustar al índice del arreglo
			edadSum[deporte - 1] += edad; // Restar 1 para ajustar al índice del arreglo
		}
	}

	printf("\nResumen:\n");
	for ( deporte = 1; deporte <= 5; deporte++)
	{
		printf("Socios que practican deporte %d: %d\n", deporte, deporteCount[deporte - 1]);
		if (deporteCount[deporte - 1] > 0)
		{
			float promedioEdad = (float)edadSum[deporte - 1] / deporteCount[deporte - 1];
			printf("Promedio de edad de los jugadores de deporte %d: %.2f\n", deporte, promedioEdad);
		}
	}

	return 0;
}
