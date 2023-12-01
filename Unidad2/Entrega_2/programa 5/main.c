#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	int N,i;
	double resultado = 0.0;

	printf("Ingrese un numero entero N: ");
	scanf("%d", &N);

	// Imprimimos el encabezado de la serie
	printf("Serie: ");

	int signo = 1; // Inicializamos el signo en 1 para el primer término (positivo)

	for (i = 1; i <= N; i++)
	{
		resultado += (1.0 / i) * signo;	   // Calculamos y agregamos el término a la suma
		printf("%lf ", (1.0 / i) * signo); // Imprimimos el término de la serie
		signo *= -1;					   // Cambiamos el signo para el siguiente término
	}

	printf("\nResultado de la serie: %lf\n", resultado);

	return 0;
}
