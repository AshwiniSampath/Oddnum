// odd.c

#include <stdio.h>

int main() {
    int limit;
    printf("Enter the limit: ");
    scanf("%d", &limit);

    printf("Odd numbers up to %d are: ", limit);
    for (int i = 1; i <= limit; i++) {
        if (i % 2 != 0) {
            printf("%d ", i);
        }
    }
    printf("\n");

    return 0;
}

