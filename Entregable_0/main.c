#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

#define A 7
#define B 8

void convertToBinary(unsigned a) {
  /* step 1 */
  if (a > 1) convertToBinary(a / 2);

  /* step 2 */
  printf("%d", a % 2);
}


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
        parte_entera = parte_entera *10 + (numero[i] - '0'); // Conversion de digito a numero
        i++;
    }

    // Imprimo (prueba)
    printf("Parte entera: %d\n",parte_entera);



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
    //Imprimo (prueba)

    printf("Parte fraccionaria: %d\n",parte_fraccionaria);

    // Conversion a Q(7,8)

    // Hacemos el corrimiento de los bits para que la parte entera sea la mas significativa

    int32_t escalaEntera = parte_entera << A; // corro d posiciones

    int32_t escalaDecimal = (parte_fraccionaria << A) / mult_fraccionario;

    int32_t valor = signo * (escalaEntera + escalaDecimal);

    printf("Decimal: %d , Hexadecimal: 0x%x\nBinario: ",valor, (uint32_t) valor);

    convertToBinary(valor);
    return 0;
}


