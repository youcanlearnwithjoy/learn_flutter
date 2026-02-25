part of my_database;

base class MangoDB extends Database {
  void showSecret(){
    print("Using: ${_connectionString}");
  
  }
}