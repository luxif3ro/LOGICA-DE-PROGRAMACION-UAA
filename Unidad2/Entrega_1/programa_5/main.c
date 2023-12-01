#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	float salarios[20], valorTotal;
	int i, trabajador;
	for (i = 0; i <= 19; i++)
	{
		salarios[i] = (rand() % 2800) + 800;
		valorTotal = valorTotal + salarios[i];
	}
	printf("El valor de la nomina empresarial es $%.2f \n", valorTotal);
	for (i = 0; i <= 19; i++)
	{
		trabajador = i + 1;
		if (salarios[i] >= 1200)
		{
			if (salarios[i] >= 3600)
			{
				salarios[i] = salarios[i] * 1.05;
				printf("el sueldo del trabajador %d es mayor a 3 salarios minimos con el aumento serian: $%.2f \n", trabajador, salarios[i]);
			}
			salarios[i] = salarios[i] * 1.10;
			printf("el sueldo del trabajador %d esta entre 1 y 2 salarios minimos con el aumento serian: $%.2f \n", trabajador, salarios[i]);
		}
		else
		{
			salarios[i] = salarios[i] * 1.20;
			printf("el sueldo del trabajador %d es menor a 1 salarios minimos con el aumento serian: $%.2f \n", trabajador, salarios[i]);
		}
	}

	return 0;
}
