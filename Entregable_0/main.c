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

    char entrada[30];

    // Chequeo validez de la entrada
    if (scanf("%s",entrada) !=1)
    {
        printf("Entrada inválida.");
        return 1;
    }

    int parte_entera, parte_fraccionaria;
    sscanf(entrada, "%d.%d", &parte_entera, &parte_fraccionaria);


    //REVISAR RANGO

    // Si el numero es menor a -2^(7) o mayor a 2^7

    if ((parte_fraccionaria < ((-1) * pow(2,A))) || parte_entera > (pow(2,A))){
            printf("Fuera de rango");
            return 1;
    }


    // Conversion a Q(A,B)

    int16_t valor = ((parte_entera << (A+1)) | (parte_fraccionaria & 0xFF));

    printf("Hexadecimal: 0x%4x\n",valor);

/*
    printf("Binario: ");
    convertToBinary(valor);
*/
    return 0;
}


