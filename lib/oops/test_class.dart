import 'classes.dart';

base class JDBC extends Database {
  @override
  void connect() {
    print('Connecting to JDBC database...');
  }
}

sealed class NetworkResult{}

class Success extends NetworkResult{
  String data;
  Success(this.data);
} 

class Failure extends NetworkResult{
  String error;
  Failure(this.error);
}

class Loading extends NetworkResult{}

void handleResult(NetworkResult result){
  if(result is Success){
    print("Data: ${result.data}");
  } else if(result is Failure){
    print("Error: ${result.error}");
  } else if(result is Loading){
    print("Loading...");
  }
} 