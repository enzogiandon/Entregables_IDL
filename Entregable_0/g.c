#include <stdio.h>
#include <stdint.h>
int validar (char hexa[20]){
    // Verifica que sea de la forma 0xHHHH
    if (hexa == NULL || strlen(hexa) != 6) {
       return 1;
    }
    if (hexa[0] != '0' || hexa[1] != 'x') {
        return 1;
    }
    // Verifica que los caracteres son dígitos hexadecimales
    for (int i = 2; i < 6; i++) {
        if (!((hexa[i] >= '0' && hexa[i] <= '9') || (hexa[i] >= 'A' && hexa[i] <= 'F') || (hexa[i] >= 'a' && hexa[i] <= 'f'))) {
            return 1;
        }
    }
    return 0;

//si retorna 0 el número es válido.
}
int g() {
    char hexadecimal[20];
    printf("Ingrese un número en formato hexadecimal (0xHHHH): ");
    scanf("%s", hexadecimal);

    if(validar(hexadecimal)){
        printf("entrada invalida");
        return 1;
    }
    uint16_t nument;
    sscanf(hexadecimal, "0x%04X", &nument);
    int entero = (int16_t)nument >> 8;
    int frac = (nument & 0xFF);
    int fraccion=(frac*1000)/256;


    if (entero < -128 || entero > 127) {
        printf("El número está fuera del rango de Q(7,8).\n");
        return 1;
    }
    printf("Valor decimal: %d.%03d\n", entero, fraccion);
    return 0;
}
