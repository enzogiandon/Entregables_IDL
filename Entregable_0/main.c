#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main()
{
    printf("Entregable 0\nIngrese un número con decimal, que será validado posteriormente:\n");

    char numero[30];

    // Chequeo validez de la entrada
    if (scanf("%s",numero) !=1)
    {
        printf("Entrada inválida.");
        return 1;
    }


    int signo,posPunto;
    int i=0;

    // Chequeo signo
    if (numero[0] == '-')
    {
        signo = -1;
        i++;
    }
    else
        signo = 1;


    // Analizo la parte entera digito a digito
    int parte_entera =0;

    while(isdigit(numero[i]))
    {
        parte_entera = parte_entera *10 + (numero[i] - '0'); // Conversion de digito a numero
        i++;
    }

    // Imprimo (prueba)
    printf("Parte entera: %d",parte_entera);



    // Analizo la parte fraccionaria digito a digito

    int parte_fraccionaria = 0;
    int mult_fraccionario = 1;

    if ((numero[i] == '.') || (numero[i] == ','))
    {
        i++;
        while(isdigit(numero[i]))
        {
            parte_fraccionaria = parte_fraccionaria *10 + (numero[i] - '0');
            i++;
        }
    }

    //Imprimo (prueba)

    printf("Parte fraccionaria: %d",parte_fraccionaria);
    return 0;
}
