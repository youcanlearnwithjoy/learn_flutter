/**
 * A Constructor is a special method that runs when
 * you create an object. Dart has several types, each
 * serving a different purpose.
 *1. Default constructor:
 *If you don't define any constructor, Dart gives you one automatically with
 no parameters.
 * 2 Generative constructor:
 * The most common type, You explicitly define it and pass values to initialize fields.
 */
//1. Default constructor example:
class Dog{
  String name = "";
  int age = 0;
}
//2. Generative constructor example:
class Dog1{
  String? name;
  int? age;
  
  Dog1(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

//Shorthand(Initializing Formals) - Dart's cleaner way.
//Instead of writing this.name = name, inside the body, dart lets you do it directly in the parameter list.

class Dog3{
  String name;
  int age;

  Dog3(this.name, this.age);
}

//3 . Named Constructor
// Dart doesn't support method overloading, so named constructors let you have
// multiple ways to create an object.

class Person{
  String name;
  int age;
  String role;

  Person(this.name, this.age, this.role);

  Person.guest(): name="Guest", age = 0, role = "Visitor";

  Person.fromMap(Map<String, dynamic> map)
    : name = map['name'] ?? "Unknown",
      age = map['age'] ?? 0,
      role = map['role'] ?? "Unknown";

  Person.admin(String name) : name = name, age = 0, role = "Adminstrator";

}

//4 . Named Parameters Constructor

class Car {
  String brand;
  String model;
  int year;
  String color;

  Car({required this. brand, required this.model, required this.year, this.color = "White"});
}

//5 Redirecting Constructor
// A constructor that simply calls another constructor in the same class. Its body is empty.
//It just delegates.

class Point{
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  Point.origin(): this(0, 0, 0); // redirects to main
  Point.onXAxis(double x): this(x, 0, 0); // redirects to main
  Point.onYAxis(double y): this(0, y, 0); // redirects to main
  Point.onZAxis(double z): this(0, 0, z); //  redirects to main
}

//6. Initilizer List constructor
//Code that runs before the constructor body, used to initialize final fields or add assertions.

class Circle{
  final double radius;
  final double area;
  final double circumference;
  Circle(double radius): radius = radius, area = 3.14 * radius * radius, circumference = 2 * 3.14 * radius {
    print("circle created with radius $radius");
  }
}

//7. Constant Constructor
// Creates a compile-time constant object. Fields must be final. Same values
//always produce the same instance(no duplicate objects in memory).

class AppColors{
  final int r;
  final int g;
  final int b;

  const AppColors(this.r, this.g, this.b);

  static const AppColors red = AppColors ( 255,0,0);
  static const AppColors green = AppColors (0,255,0);
  static const AppColors blue = AppColors (0,0,255);
}

// 8. Factory Constructor
// A constructor that doesn't always create a new  instance.
// It can return a cached object, a subtype, or apply complex logic before
//returning. Very commonly used for Singletons and JSON parsing.

class DatabaseConnection {
  static DatabaseConnection? _instance;
  final String url;

  DatabaseConnection._internal(this.url); // Private generative constructor

  factory DatabaseConnection(String url){
    _instance ??=  DatabaseConnection._internal(url);
    return _instance!;
  }


}

//9. Consturctor in Inheritance
//When a subclass needs to call the parent class constructor, it uses super.

class Animal{
  String name;
  int age;

  Animal(this.name, this.age);
}

class Cat extends Animal{
  String breed;

  Cat(String name, int age, this.breed) : super(name, age);

}