/**
 * T - General Type Parameter (most common)
 * is the most universal placeholder. Use it when you have a single geneic type.
 * 
 */

class Box<T> {
  T value;
  Box(this.value);

  T getValue() => value;

  @override
  String toString() => 'Box containing: $value';
}

void main(){
  Box<int> intBox = Box(42);
  Box<String> strBox = Box("Hello Dart!");
  Box<double> doubleBox = Box(3.14);
  print(intBox.getValue());
  print(strBox.getValue());
  print(doubleBox.getValue());
  List<int> intList = [1, 2, 3];
  List<String> strList = ["a", "b", "c"];
  print(getFirst(intList)); // Output: 1
  print(getFirst(strList)); // Output: a
}


T getFirst<T>(List<T> items) {
  return items.first;
}

