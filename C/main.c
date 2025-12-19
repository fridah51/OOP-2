#include <stdio.h>

struct ArrayCRUD {
    int arr[10];
    int size;
};

void create(struct ArrayCRUD *a, int value) {
    a->arr[a->size++] = value;
}

void read(struct ArrayCRUD a) {
    for (int i = 0; i < a.size; i++)
        printf("%d ", a.arr[i]);
    printf("\n");
}

void update(struct ArrayCRUD *a, int index, int value) {
    if (index < a->size)
        a->arr[index] = value;
}

void delete(struct ArrayCRUD *a, int index) {
    for (int i = index; i < a->size - 1; i++)
        a->arr[i] = a->arr[i + 1];
    a->size--;
}




