#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define A 7
#define B 8

// Convierte número decimal (string) a punto fijo Q7.8
int16_t decimal_a_puntofijo(const char *numero) {
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
    if (numero[i] == '.' || numero[i] == ',') {
        i++;
        while (isdigit(numero[i])) {
            parte_fraccionaria = parte_fraccionaria * 10 + (numero[i] - '0');
            mult_fraccionario *= 10;
            i++;
        }
    }

    if (numero[i] != '\0') {
        printf("Entrada inválida: %s\n", numero);
        exit(1);
    }

    if ((signo * parte_entera < -128) || (signo * parte_entera > 127)) {
        printf("Valor fuera de rango: %s\n", numero);
        exit(1);
    }

    int16_t escalaEntera = (parte_entera << B);
    int16_t escalaDecimal = (parte_fraccionaria << B) / mult_fraccionario;

    return signo * (escalaEntera + escalaDecimal);
}

// Convierte de Q7.8 a decimal
void puntofijo_a_decimal(int16_t valor) {
    float resultado = valor / 256.0f;
    printf("Valor decimal: %.6f\n", resultado);
}

// Pide y valida un número decimal como string
void pedir_entrada(char *buffer, const char *mensaje) {
    while (1) {
        printf("%s", mensaje);
        scanf("%s", buffer);

        int i = 0;
        if (buffer[0] == '-') i++;
        int tiene_digito = 0;

        while (isdigit(buffer[i])) {
            tiene_digito = 1;
            i++;
        }

        if ((buffer[i] == '.' || buffer[i] == ',') && isdigit(buffer[i + 1])) {
            i++;
            while (isdigit(buffer[i])) i++;
        }

        if (buffer[i] == '\0' && tiene_digito) break;
        printf("Entrada inválida. Intente de nuevo.\n");
    }
}

// Función principal
int h() {
    char entrada[30];
    int16_t m, b, x;
    int32_t y;

    // Ingreso y conversión de m
    pedir_entrada(entrada, "Ingrese el valor de m (pendiente): ");
    m = decimal_a_puntofijo(entrada);
    printf("m en punto fijo: 0x%04X\n", (uint16_t)m);

    // Ingreso y conversión de b
    pedir_entrada(entrada, "Ingrese el valor de b (ordenada al origen): ");
    b = decimal_a_puntofijo(entrada);
    printf("b en punto fijo (Q7.8): 0x%04X\n", (uint16_t)b);

    // Ingreso y conversión de x
    pedir_entrada(entrada, "Ingrese el valor de x: ");
    x = decimal_a_puntofijo(entrada);
    printf("x en punto fijo: 0x%04X\n", (uint16_t)x);

    // Cálculo de y = m * x + b
    // m*x queda en Q(14,16)
    int32_t producto = (int32_t)m * (int32_t)x;

    // b lo subimos a Q(16,15)
    int32_t b_ajustado = ((int32_t)b) << 7;

    // Sumamos en Q(16,15)
    y = producto + b_ajustado;

    printf("\nResultado y = m*x + b (en Q16.15):\n");
    printf("Hexadecimal: 0x%08X\n", (uint32_t)y);
    printf("Valor decimal: %.6f\n", y / 32768.0f);  // 2^15 = 32768

    return 0;
}
