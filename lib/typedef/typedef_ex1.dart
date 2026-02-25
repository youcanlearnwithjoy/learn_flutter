typedef MathOperation = int Function(int a, int b);

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;

void performOperation(int a, int b, MathOperation operation){
  print(operation(a, b));
}
void main(){
  performOperation(10, 5, add); // Output: 15
  performOperation(10, 5, subtract); // Output: 5
  performOperation(10, 5, multiply); // Output: 50      
}

