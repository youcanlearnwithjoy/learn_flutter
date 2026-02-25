/**
 * By default, await runs tasks sequentially, - one after another.
 * For parallel execution use Future.wait.
 * 
 */

Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return "User Alice"; 
}

Future<String> fetchProductData() async {
  await Future.delayed(Duration(seconds : 2));
  return "Products: [Phone, Laptop]";
}

Future<String> fetchOrderedData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Orders: [Order1, Order2]";
}

Future<void> main() async {
Stopwatch sw = Stopwatch()..start();
String user = await fetchUserData();
String products = await fetchProductData();
String orders = await fetchOrderedData();
print("Sequential took : ${sw.elapsed.inSeconds}s");
sw.reset();
List<String> results = await Future.wait([fetchUserData(), fetchProductData(), fetchOrderedData()]);

print("Parallel took: ${sw.elapsed.inSeconds}s");
print(results);

String res = await Future.any([
  Future.delayed(Duration(seconds: 3), () => "Slow Server"),
  Future.delayed(Duration(seconds: 1), () => "Fast Server"),
  Future.delayed(Duration(seconds:2), () => "Medium Server")
]);
print(res); 
}
// Output: Fast Server

/**
 * Future.any
 * 
 * Returns the result of the first future that completes:
 * 
 */