#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main()
{
	int horasTrabajadas, tipoTrabajador;
	float sueldoPorHora, impuesto, totalAPagar = 0;

	char continuar;

	do
	{
		printf("Ingrese las horas trabajadas: ");
		scanf("%d", &horasTrabajadas);

		printf("Ingrese el sueldo por hora: ");
		scanf("%f", &sueldoPorHora);

		printf("Ingrese el tipo de trabajador (1.-obrero, 2.-administrativo): ");
		scanf("%d", &tipoTrabajador);

		float pago = horasTrabajadas * sueldoPorHora;

		// Verificar si el trabajador debe pagar impuesto
		if (pago < 30000)
		{
			impuesto = 0.0;
		}
		else
		{
			impuesto = 0.1 * pago;
		}

		// Imprimir el total a pagar y sumarlo al total acumulado
		printf("Total a pagar: %.2f\n", pago - impuesto);
		totalAPagar += (pago - impuesto);

		// Preguntar al usuario si desea continuar
		printf("Desea continuar (s/n)? ");
		scanf(" %c", &continuar);
	} while (continuar == 's' || continuar == 'S');

	printf("El total a pagar a los trabajadores es: %.2f\n", totalAPagar);

	return 0;
}
