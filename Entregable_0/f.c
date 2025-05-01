
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define A 7
#define B 8

void printBinary16(uint16_t value) {
    for (int i = 15; i >= 0; i--) {
        printf("%d", (value >> i) & 1);
    }
}

int f() {
    printf("Ingrese un número con decimal, que será validado posteriormente:\n");
    char numero[30];

    if (scanf("%s", numero) != 1) {
        printf("Entrada inválida.\n");
        return 1;
    }

    int signo = 1, i = 0;
    if (numero[0] == '-') {
        signo = -1;
        i++;
    }

    int parte_entera = 0;
    while (isdigit(numero[i])) {
        parte_entera = parte_entera * 10 + (numero[i] - '0');
        i++;
    }

    int parte_fraccionaria = 0, mult_fraccionario = 1;
    if ((numero[i] == '.') || (numero[i] == ',')) {
        i++;
        while (isdigit(numero[i])) {
            parte_fraccionaria = parte_fraccionaria * 10 + (numero[i] - '0');
            mult_fraccionario *= 10;
            i++;
        }
    }

    if ((signo * parte_entera < -128) || (signo * parte_entera > 127)) {
        printf("Fuera de rango\n");
        return 1;
    }

    int16_t escalaEntera = (parte_entera << B);
    int16_t escalaDecimal = (parte_fraccionaria << B) / mult_fraccionario;
    int16_t valor = signo * (escalaEntera + escalaDecimal);

    printf("Hexadecimal: 0x%04X\n", (uint16_t) valor);
    printf("Binario: ");
    printBinary16((uint16_t) valor);
    printf("\n");

    return 0;
}
