class ArrayCRUD {
    int[] arr = new int[10];
    int size = 0;

    void create(int value) {
        arr[size++] = value;
    }

    void read() {
        for (int i = 0; i < size; i++)
            System.out.print(arr[i] + " ");
        System.out.println();
    }

    void update(int index, int value) {
        if (index < size)
            arr[index] = value;
    }

    void delete(int index) {
        for (int i = index; i < size - 1; i++)
            arr[i] = arr[i + 1];
        size--;
    }
}



class Node {
    int data;
    Node next;
    Node(int d) { data = d; }
}

class LinkedListCRUD {
    Node head;

    void create(int data) {
        Node n = new Node(data);
        n.next = head;
        head = n;
    }

    void read() {
        Node temp = head;
        while (temp != null) {
            System.out.print(temp.data + " -> ");
            temp = temp.next;
        }
        System.out.println("null");
    }

    void update(int oldVal, int newVal) {
        Node temp = head;
        while (temp != null) {
            if (temp.data == oldVal) {
                temp.data = newVal;
                return;
            }
            temp = temp.next;
        }
    }

    void delete(int key) {
        Node temp = head, prev = null;
        while (temp != null) {
            if (temp.data == key) {
                if (prev == null) head = temp.next;
                else prev.next = temp.next;
                return;
            }
            prev = temp;
            temp = temp.next;
        }
    }
}
