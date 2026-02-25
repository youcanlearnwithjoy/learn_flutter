/**
 * K and V - Key and Value (Maps)
 * 
 * K and V always go together when building map-like structures. Dart's own
 * Map<K, V> uses this convention.
 * 
 */

class Pair<K,V> {
  K key;
  V value;
  Pair(this.key, this.value);

  @override
  String toString() => 'Pair: { $key: $value }';

}

class SimpleMap<K,V> {
  final Map<K,V> _data  = {};
  void put(K key, V value) => _data[key] = value;
  V? get(K key) => _data[key];

  bool containsKey(K key) => _data.containsKey(key);

  @override
  String toString() => 'SimpleMap: ${_data.toString()}';

}

void main(){
  Pair<String, int> age = Pair("Alice", 30);
  Pair<int, bool> flags = Pair(1, true);
  print(age); // Output: Pair: { Alice: 30 }
  print(flags); // Output: Pair: { 1: true }

  SimpleMap<String, double> prices = SimpleMap();
  prices.put("Apple", 0.99);
  prices.put("Banana", 0.59);
  print(prices.get("Apple"));
  print(prices); 
}