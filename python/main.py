class ArrayCRUD:
    def __init__(self):
        self.arr = []

    def create(self, value):
        self.arr.append(value)

    def read(self):
        return self.arr

    def update(self, index, value):
        if 0 <= index < len(self.arr):
            self.arr[index] = value

    def delete(self, index):
        if 0 <= index < len(self.arr):
            self.arr.pop(index)


class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedListCRUD:
    def __init__(self):
        self.head = None

    def create(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

    def read(self):
        temp = self.head
        while temp:
            print(temp.data, end=" -> ")
            temp = temp.next
        print("None")

    def update(self, old, new):
        temp = self.head
        while temp:
            if temp.data == old:
                temp.data = new
                return
            temp = temp.next

    def delete(self, key):
        temp = self.head
        prev = None
        while temp:
            if temp.data == key:
                if prev:
                    prev.next = temp.next
                else:
                    self.head = temp.next
                return
            prev = temp
            temp = temp.next
