#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	float sueldo, aumento, sueldoFinal;
	int i, controlador = 1;
	do
	{
		sueldo = 0;
		aumento = 0;
		sueldoFinal = 0;
		printf("cual es el suedo de el empleado? >");
		scanf("%f", &sueldo);
		if (sueldo < 5000)
		{
			aumento = sueldo * .10;
			sueldoFinal = sueldo + aumento;
			printf("El empleado va a recibir un aumento de $%.2f,su sueldo final sera de $%.2f \n", aumento, sueldoFinal);
		}
		else
		{
			aumento = sueldo * .08;
			sueldoFinal = sueldo + aumento;
			printf("El empleado va a recibir un aumento de $%.2f,su sueldo final sera de $%.2f \n", aumento, sueldoFinal);
		}

		printf("quieres seguir revisando empleados?(si=0/no=1) >");
		scanf("%d", &controlador);
	} while (controlador != 1);

	return 0;
}
