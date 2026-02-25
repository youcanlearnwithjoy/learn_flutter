/**
 * Function type alias;
 */

typedef MathOperation = int Function(int a, int b);

//Generic function alias
typedef Transformer<T,S> = S Function(T);

//Flutter callbacks

typedef Onsuccess = void Function(String);

//Complex type alias
typedef JsonMap = Map<String, dynamic>;