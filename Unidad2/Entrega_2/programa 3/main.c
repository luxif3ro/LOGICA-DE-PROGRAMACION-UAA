#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    char controlador[2], colegio[2];
    float promedio;

    do
    {
        promedio = 0;
        printf("Estuviste en secundaria privada? (s/n) > ");
        scanf("%s", colegio);

        if (colegio[0] == 's')
        {
            printf("Dame el promedio obtenido en secundaria > ");
            scanf("%f", &promedio);

            if (promedio >= 9)
            {
                printf("El alumno recibira un descuento del 25 por ciento de su pago mensual\n");
            }
            else
            {
                printf("El alumno recibira un descuento del 15 por ciento de su pago mensual\n");
            }
        }
        else if (colegio[0] == 'n')
        {
            printf("Dame el promedio obtenido en secundaria > ");
            scanf("%f", &promedio);

            if (promedio >= 8)
            {
                printf("El alumno recibira un descuento del 30 por ciento de su pago mensual\n");
            }
            else
            {
                printf("El alumno recibira un descuento del 20 por ciento de su pago mensual\n");
            }
        }
        else
        {
            printf("~No me diste un valor aceptable~\n");
        }

        printf("Deseas seguir capturando? (s/n) > ");
        scanf("%s", controlador);
    } while (controlador[0] == 's');

    return 0;
}
