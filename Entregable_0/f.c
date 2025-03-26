#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define A 7
#define B 8

void convertToBinary16(unsigned a,int i)
{
    i++;
    if (i<16) // solo para 16 bits
    {
        /* step 1 */
        if (a > 1) convertToBinary16(a / 2,i);
        /* step 2 */
        printf("%d", a % 2);
    }
}
int main()
{
    printf("Ingrese un número con decimal, que será validado posteriormente:\n");
    char numero[30];

    // Chequeo validez de la entrada
    if (scanf("%s",numero) !=1)
    {
        printf("Entrada inválida.");
        return 1;
    }
    int signo = 1;
    int i=0;

    // Chequeo signo
    if (numero[0] == '-')
    {
        signo = -1;
        i++;
    }

    // Analizo la parte entera digito a digito
    int parte_entera =0;

    while(isdigit(numero[i]))
    {
        //Conversión de dígito a número
        parte_entera = parte_entera * 10 + (numero[i] - '0');
        i++;
    }


    // Analizo la parte fraccionaria digito a digito
    int parte_fraccionaria = 0;
    int mult_fraccionario = 1;

    if ((numero[i] == '.') || (numero[i] == ','))
    {
        i++;
        while(isdigit(numero[i]))
        {
            parte_fraccionaria = parte_fraccionaria *10 + (numero[i] - '0');
            mult_fraccionario *= 10;
            i++;
        }
    }

    // Chequeo rango
    if ((signo * parte_entera < (-128) || signo * parte_entera > 127))
    {
        printf("Fuera de rango");
        return 1;
    }

    // Conversion a Q(7,8)
    // Hacemos el corrimiento de los bits para que la parte entera sea la mas significativa
    int16_t escalaEntera = (parte_entera << B); // corro B posiciones
    int16_t escalaDecimal = (parte_fraccionaria << B) / mult_fraccionario; // corro B posiciones / 10^ n digitos
    int16_t valor = signo * (escalaEntera + escalaDecimal);

    // Imprimo resultado en hexa y binario
    printf("Hexadecimal: 0x%04X\n", (uint16_t) valor);

    printf("Binario: ");

    if (signo == 1)
        printf("%d",0);
    else
        printf("%d",1);

    convertToBinary16(valor,0);

    return 0;
}
