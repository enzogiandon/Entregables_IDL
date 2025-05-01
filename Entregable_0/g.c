#include <stdio.h>
#include <stdint.h>
#include <string.h>

int validar(char hexa[20]) {
    if (hexa == NULL || strlen(hexa) != 6) {
        return 1;
    }
    if (hexa[0] != '0' || hexa[1] != 'x') {
        return 1;
    }
    for (int i = 2; i < 6; i++) {
        if (!((hexa[i] >= '0' && hexa[i] <= '9') ||
              (hexa[i] >= 'A' && hexa[i] <= 'F') ||
              (hexa[i] >= 'a' && hexa[i] <= 'f'))) {
            return 1;
        }
    }
    return 0;
}

int g() {
    char hexadecimal[20];
    printf("Ingrese un número en formato hexadecimal (0xHHHH): ");
    scanf("%s", hexadecimal);

    if (validar(hexadecimal)) {
        printf("entrada invalida\n");
        return 1;
    }

    uint16_t valor_uint16;
    sscanf(hexadecimal, "0x%hx", &valor_uint16);

    // Interpreta el valor como número con signo (Q7.8 usa complemento a dos)
    int16_t valor_q7_8 = (int16_t)valor_uint16;

    int entero = valor_q7_8 / 256;
    int fraccion;

    // Cálculo de la parte fraccionaria, manejando signo
    if (valor_q7_8 >= 0) {
        fraccion = ((valor_q7_8 & 0xFF) * 1000) / 256;
    } else {
        fraccion = (((-valor_q7_8) & 0xFF) * 1000) / 256;
    }

    if (entero < -128 || entero > 127) {
        printf("El número está fuera del rango de Q(7,8).\n");
        return 1;
    }

    if (valor_q7_8 >= 0) {
        printf("Valor decimal: %d.%03d\n", entero, fraccion);
    } else {
        printf("Valor decimal: -%d.%03d\n", -entero, fraccion);
    }

    return 0;
}
