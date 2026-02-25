import 'database_bundle.dart';

void main(){
  MangoDB mangoDB = MangoDB();
  mangoDB.connect();
  mangoDB.showSecret();
}