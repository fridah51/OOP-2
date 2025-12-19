#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node* create(struct Node* head, int data) {
    struct Node* n = malloc(sizeof(struct Node));
    n->data = data;
    n->next = head;
    return n;
}

void read(struct Node* head) {
    while (head) {
        printf("%d -> ", head->data);
        head = head->next;
    }
    printf("NULL\n");
}

struct Node* delete(struct Node* head, int key) {
    struct Node *temp = head, *prev = NULL;
    while (temp) {
        if (temp->data == key) {
            if (prev) prev->next = temp->next;
            else head = temp->next;
            free(temp);
            return head;
        }
        prev = temp;
        temp = temp->next;
    }
    return head;
}
