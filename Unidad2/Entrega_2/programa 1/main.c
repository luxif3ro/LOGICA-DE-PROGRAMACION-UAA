#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	int i, numeroAleatorio, arregloNumeros[47];
	for (i = 0; i < 46; i++)
	{
		arregloNumeros[i] = rand() % 10;
	}
	printf("~se guardaron los numeros en el arreglo~\n");
	numeroAleatorio = rand() % 47;
	printf("el numero alatorio generado es %d, por ende se mostrara esa casilla del arreglo \n", numeroAleatorio);
	printf("el valor de la casilla es %d", arregloNumeros[(numeroAleatorio - 1)]);
	return 0;
}
