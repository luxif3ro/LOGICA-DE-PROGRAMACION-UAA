#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[])
{
	float parcial1, parcial2, parcial3, examenFinal, trabajoFinal, calificacion;
	printf("dame la calificacion de el primer parcial >");
	scanf("%f", &parcial1);
	printf("dame la calificacion de el segundo parcial >");
	scanf("%f", &parcial2);
	printf("dame la calificacion de el tercer parcial >");
	scanf("%f", &parcial3);
	printf("dame la calificacion de el examen final >");
	scanf("%f", &examenFinal);
	printf("dame la calificacion de el trabajo final >");
	scanf("%f", &trabajoFinal);

	calificacion = ((((parcial1 + parcial2 + parcial3) / 3) * .55) + (examenFinal * .30) + (trabajoFinal * .15));

	printf("tu calificacion de parcial es %.2f", calificacion);
	return 0;
}
