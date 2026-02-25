/**
 * A typedef is simply a way to give a name/alias to a function signature or type, so you can
 * reuse it without repeating the full signature everywhere.
 *
 */

//Without typedef: The problem

//Imagine passing a function as a parameter,
//you have to write the full signature everytime - messy!

void performOperation(int a, int b , int Function(int, int) operation){
  print(operation(a, b));
}

void calculate(int a, int b, int Function(int, int) operation){
  print(operation(a,b));
}

void execute(int a, int b, int Function(int, int) operation){
  print(operation(a,b));
}

//Repeating "int Function(int,int)" everywhere is messy

//With typedef: The solution

//Declare once, use everywhere
typedef MathOperation = int Function(int a, int b);

//Now use the alias instead of full signature
void performOperation1(int a, int b, MathOperation operation){
  print(operation(a, b));
}

void calculate1(int a, int b, MathOperation operation){
  print(operation(a,b));
}

void execute1(int a, int b, MathOperation operation){
  print(operation(a,b));
}
