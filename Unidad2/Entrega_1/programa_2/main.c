#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	float presionBares, presionPsi;
	printf("Dame la presion en bares (sin anadir su nomenclatura de unidad): ");
	scanf("%f", &presionBares);
	presionPsi = presionBares * 14.504;
	printf("La presion en PSI es: %.3f psi", presionPsi);
	return 0;
}
