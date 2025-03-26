#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#define A 7
#define B 8
// Función para validar y convertir un número decimal a punto fijo
int16_t decimal_a_puntofijo(const char *numero) {
    int signo = 1;
    int i = 0;
    // Chequeo signo
    if (numero[0] == '-') {
        signo = -1;
        i++;
    }
    // Analizo la parte entera digito a digito
    int parte_entera = 0;
    while(isdigit(numero[i])) {
        parte_entera = parte_entera * 10 + (numero[i] - '0');
        i++;
    }
    // Analizo la parte fraccionaria digito a digito
    int parte_fraccionaria = 0;
    int mult_fraccionario = 1;
    if ((numero[i] == '.') || (numero[i] == ',')) {
        i++;
        while(isdigit(numero[i])) {
            parte_fraccionaria = parte_fraccionaria * 10 + (numero[i] - '0');
            mult_fraccionario *= 10;
            i++;
        }
    }
    // Validación de rango
    if ((signo * parte_entera < (-128) || signo * parte_entera > 127)) {
        printf("Valor fuera de rango: %s\n", numero);
        exit(1);
    }
    // Conversión a Q(7,8)
    int16_t escalaEntera = (parte_entera << B);
    int16_t escalaDecimal = (parte_fraccionaria << B) / mult_fraccionario;
    return signo * (escalaEntera + escalaDecimal);
}
// Función para convertir de punto fijo a decimal
void puntofijo_a_decimal(int16_t valor) {
    int entero = valor >> B;
    int frac = (valor & 0xFF);
    int fraccion = (frac * 1000) / 256; // 3 decimales
    printf("Valor decimal: %d.%03d\n", entero, fraccion);
}
//integración de todo
int h() {
    char entrada[30];
    int16_t m, b, x, y;
    // Ingreso y conversión de m
    printf("Ingrese el valor de m (pendiente): ");
    scanf("%s", entrada);
    m = decimal_a_puntofijo(entrada);
    printf("m en punto fijo: 0x%04X\n", (uint16_t)m);
    // Ingreso y conversión de b
    printf("Ingrese el valor de b (ordenada al origen): ");
    scanf("%s", entrada);
    b = decimal_a_puntofijo(entrada);
    printf("b en punto fijo: 0x%04X\n", (uint16_t)b);

    // Ingreso y conversión de x
    printf("Ingrese el valor de x: ");
    scanf("%s", entrada);
    x = decimal_a_puntofijo(entrada);
    printf("x en punto fijo: 0x%04X\n", (uint16_t)x);

    // Cálculo de y = m*x + b en punto fijo

    // Primero multiplicamos m*x (resultado en Q(14,16))
    int32_t producto = (int32_t)m * (int32_t)x;

    // Redondeamos y convertimos a Q(7,8) desplazando 8 bits
    producto = (producto + (1 << 7)) >> 8;

    // Sumamos b (en Q(7,8))
    y = (int16_t)producto + b;

    printf("\nResultado y = m*x + b:\n");
    printf("Hexadecimal: 0x%04X\n", (uint16_t)y);
    puntofijo_a_decimal(y);
    return 0;
}
