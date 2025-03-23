#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main()
{
    printf("Entregable 0\nIngrese un número con decimal, que será validado posteriormente:\n");

    char numero[30];
    if (scanf("%s",numero) !=1)
    {
        printf("Entrada inválida.");
        return 1;
    }


    int signo,posPunto;
    int i=0;

    if (numero[0] == '-')
    {
        signo = -1;
        i++;
    }
    else
        signo = 1;


    int parte_entera =0;

    while(isdigit(numero[i]))
    {
        parte_entera = parte_entera *10 + (numero[i] - '0');
        i++;
    }

    printf("Parte entera: %d",parte_entera);

