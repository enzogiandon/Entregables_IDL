#include <stdio.h>
#include <stdlib.h>

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
        scanf("%d", &opcion);

        switch (opcion) {
            case 1:
                #ifdef _WIN32
                    system("gcc -o f.exe f.c & f.exe"); // Windows
                #else
                    system("gcc -o f f.c && ./f"); // Linux/Mac
                #endif
                break;
            case 2:
                #ifdef _WIN32
                    system("gcc -o g.exe g.c & g.exe"); // Windows
                #else
                    system("gcc -o g g.c && ./g"); // Linux/Mac
                #endif
                break;
            case 3:
                #ifdef _WIN32
                    system("gcc -o h.exe h.c & h.exe"); // Windows
                #else
                    system("gcc -o h h.c && ./h"); // Linux/Mac
                #endif
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
