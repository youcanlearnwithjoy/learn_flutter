library my_database;

part 'mango_implementation.dart';

base class Database {
  final String _connectionString = "secret_url";
  void connect() {
    print("Connecting to the database with connection string: $_connectionString");
  } 
}