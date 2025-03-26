#include <stdio.h>
#include <stdlib.h>

void f();
void g();
void h();
void mostrarMenu() {
    printf("\n=== MENU ===\n");
    printf("1. Compilar y ejecutar f.c\n");
    printf("2. Compilar y ejecutar g.c\n");
    printf("3. Compilar y ejecutar h.c\n");
    printf("4. Salir\n");
    printf("Seleccione una opcion: ");
}

int main() {
    int opcion;
    char comando[100];

    do {
        mostrarMenu();
        if (scanf("%d", &opcion) != 1) {
            printf("Entrada invalida. Intente de nuevo.\n");
            while (getchar() != '\n'); // Limpiar buffer de entrada
            continue;
        }
        while (getchar() != '\n'); // Limpiar buffer de entrada después de la lectura correcta

        switch (opcion) {
            case 1:
                f();
                break;
            case 2:
                g();
                break;
            case 3:
                h();
                break;
            case 4:
                printf("Saliendo...\n");
                break;
            default:
                printf("Opcion invalida, intente de nuevo.\n");
        }
    } while (opcion != 4);

    return 0;
}
