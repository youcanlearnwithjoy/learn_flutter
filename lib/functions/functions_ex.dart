import 'dart:async';


//1. Basic function
int add(int a, int b) => a + b;

//2. Void function

void greet(String name){ 
  print("Hello, $name!");
}

//3. Arrow Function =>
//When a function has only one expression, you can shorten it with => 

int add1(int a, int b){ // Regular function
  return a+b;
}

int add2(int a, int b) => a+b;

bool isEven(int number)=> number % 2 == 0;

String greet1(String name)=> "Hello, $name";

//4. OPtional Parameters []

void greet2(String name, [String role = "Guest", int age = 0]){
  print("$name | $role | $age");
}

//5. Optional Named Parameters {}

void createUser({required String name, int age=0, String role = "Guest"}){
  print("$name | $role | $age");
}

//6 Functions as First-Class Objects
//In Dart, functions are first-class objects,  meaning you can assign them to variables, pass them as arguments, and return them from other functions.

int add3(int a, int b) => a + b;
void main(){
  var operation = add3;
  print(operation(3,4));

  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach(print);

  List<int Function(int, int)> operations = [
    (a, b) => a + b,
    (a, b) => a - b,
    (a, b) => a * b,
    ];

    for(var op in operations){
      print(op(10, 5));
    } 

    execute(10, 5, operation);
    execute(10, 6, (a,b)=>a*b);

    var triple = multiplier(3);
    var double = multiplier(2);

    print(triple(5));

    // Anonymous function passed to forEach

  numbers.forEach((number) {
    print(number * 2);
  });

  // Arrow style anonymous function
  numbers.forEach((number) => print(number * 2));

  // Assigned to a variable
  var square = (int n) => n * n;
  print(square(5)); // 25
}

//7.Higher Order Functions
// A function that takes another function as a parameter or returns a function is called higher order functions:

void execute(int a, int b, int Function(int, int) operation){
  print(operation(a,b));
}

Function multiplier(int factor){
  return (int value) => value * factor;
}

//8. Anonymous Functions (Lambdas)
// A function without a name, usually passed directly as an argument.
//see the main method 

//9. Closure
//A function that remebers and accesses variables from its outer scope even after the outer function has finished:




// void main(){
//   var operation = add; // Assigning function to a variable
//   print(operation(5, 3)); // Output: 8

//   List<int> numbers = [1, 2, 3, 4, 5];
//   numbers.forEach(print);
// }

// numbers.forEach(print);
// The reason - Function Signature Matches.
//forEach on a List<int> expects a function with this signature:

//void Function(int element);
