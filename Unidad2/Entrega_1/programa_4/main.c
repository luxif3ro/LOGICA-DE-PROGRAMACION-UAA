#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	float kilimetrosRecorridos, totalPago, bolivares, totalBolivares;
	printf("Dame la cantidad de kilometros recorridos en el automovil >");
	scanf("%f", &kilimetrosRecorridos);
	if (kilimetrosRecorridos > 300)
	{
		if (kilimetrosRecorridos > 1000)
		{
			bolivares = kilimetrosRecorridos - 1000;
			totalPago = 5000 + (((kilimetrosRecorridos - bolivares) - 300) * 200);
			totalBolivares = bolivares * 150;
			printf("su recorrido sobrepaso los 1000KM asi que me va a pagar : $%.2f en pesos \n", totalPago);
			printf("y en bolivares son : %.2f", totalBolivares);
		}
		else
		{
			totalPago = 5000 + ((kilimetrosRecorridos - 300) * 200);
			printf("su recorrido sobrepaso los 300KM asi que me va a pagar : $%.2f en pesos \n", totalPago);
		}
	}
	else
	{
		printf("su recorrido no sobrepaso los 300KM asi que no hay cantidad a cobrar");
	}

	return 0;
}
