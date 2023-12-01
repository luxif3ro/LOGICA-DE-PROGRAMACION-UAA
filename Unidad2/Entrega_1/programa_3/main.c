#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	float alto, area, ancho, largo, cemento, piedra, arena, personas;
	printf("dame la altura del muro(sin anadir su nomenclatura de unidad): ");
	scanf("%f", &alto);
	printf("dame lo ancho del muro(sin anadir su nomenclatura de unidad): ");
	scanf("%f", &ancho);
	printf("dame lo largo del muro(sin anadir su nomenclatura de unidad): ");
	scanf("%f", &largo);
	area = alto * largo * ancho;
	cemento = area * 2.5;
	arena = area * 1.5;
	piedra = area * 2;
	personas = (area / 10) * 5;
	printf("el area a construir es de : %.2f metros cubicos \n", area);
	printf("la cantidad de bolsas de cemento son : %.2f bolsas \n", cemento);
	printf("la cantidad de bolsas de arena son : %.2f bolsas \n", arena);
	printf("la cantidad de bolsas de piedra son : %.2f bolsas \n", piedra);
	printf("la cantidad de personas son : %.0f ", personas);
	return 0;
}
