#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define A 7
#define B 8

void convertToBinary16(uint16_t a) {
    for (int i = 15; i >= 0; i--) {
        printf("%d", (a >> i) & 1);
    }
}

int f() {
    printf("Ingrese un número con decimal, que será validado posteriormente:\n");
    char numero[30];

    // Chequeo validez de la entrada
    if (scanf("%s",numero) != 1) {
        printf("Entrada inválida.\n");
        return 1;
    }

    int signo = 1;
    int i = 0;

    // Chequeo signo
    if (numero[0] == '-') {
        signo = -1;
        i++;
    }

    // Analizo la parte entera dígito a dígito
    int parte_entera = 0;
    while (isdigit(numero[i])) {
        parte_entera = parte_entera * 10 + (numero[i] - '0');
        i++;
    }

    // Analizo la parte fraccionaria dígito a dígito
    int parte_fraccionaria = 0;
    int mult_fraccionario = 1;

    if ((numero[i] == '.') || (numero[i] == ',')) {
        i++;
        while (isdigit(numero[i])) {
            parte_fraccionaria = parte_fraccionaria * 10 + (numero[i] - '0');
            mult_fraccionario *= 10;
            i++;
        }
    }

    // Validar el rango total de -128 a 127.996
    if (parte_entera < -128 || parte_entera > 127) {
        printf("Fuera de rango\n");
        return 1;
    }

    // Conversión a Q(7,8)
    int16_t escalaEntera = (parte_entera << B);
    int16_t escalaDecimal = (parte_fraccionaria << B) / mult_fraccionario;
    int16_t valor = signo * (escalaEntera + escalaDecimal);


    printf("debug: \n parte entera: %d \n parte fraccionaria: %d \n",parte_entera,parte_fraccionaria);
    printf("escala entera: %d\n escala decimal: %d:",escalaEntera,escalaDecimal);
    // Imprimir resultado en hexadecimal y binario}
    printf("Hexadecimal: 0x%04X\n", (uint16_t)valor);
    printf("Binario: ");
    convertToBinary16((uint16_t)valor);
    printf("\n");

    return 0;
}

