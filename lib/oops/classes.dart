// main(){

//   Student s = Student(name: "John Doe", age: 20, email: "john.doe@example.com");
//   s.getInfo();

// }

import 'test_class.dart';

class Student{
  String? name;
  int? age;
  String? email;

  Student({this.name, this.age, this.email});

  String getInfo(){
    return "Name: $name, Age: $age, Email: $email";
  }

}

base class Database{
  void connect(){
    print("Connecting to the database... ");
  }

  void disconnect(){
    print("Disconnecting from the database... ");
  } 
}

base class MangoDB extends Database{
  @override
  void connect() {
    print("Connecting to MongoDB... ");
  }

  @override
  void disconnect() {
    print("Disconnecting from MongoDB... ");
  }
}

