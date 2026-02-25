/**
 * E - Element(Collections)
 * E is used when your class/function represents a collection of elements, Dart's own
 * List<E>, Set<E>, Queue<E> use it.
 */


class Stack<E> {

  final List<E> _items = [];

  void push(E item) => _items.add(item);

  E pop(){
    if(_items.isEmpty) throw Exception("Stack is empty");
    return _items.removeLast();
  }

  E peek() => _items.last;

  bool get isEmpty => _items.isEmpty;

  @override
  String toString() => 'Stack: ${_items.toString()}';
}

main(){
  Stack<int> intStack = Stack();
  intStack.push(1);
  intStack.push(2);
  intStack.push(3);
  print(intStack); // Output: Stack: [1, 2, 3]
  print(intStack.pop()); // Output: 3
  print(intStack.peek()); // Output: 2;

  Stack<String> strStack = Stack();
  strStack.push("Dart");
  strStack.push("Flutter");
  print(strStack);
}