/**
 * S - Second Type/State
 * S is used as a second generic type alongside T, or in state-related patterns(like in Flutter's State<S>).
 * Dart's own StatefulWidget uses State<T>.
 */

class Either<T,S>{
  final T? left;
  final S? right;
  final bool isLeft;

Either.left(this.left) : right = null, isLeft = true;
Either.right(this.right) : left = null, isLeft = false;

@override
String toString() => isLeft ? 'Left: $left' : 'Right: $right';

}

void main() {
  Either<int, String> success = Either.left(200);
  Either<int, String> failure = Either.right("Not Found");
  print(success); // Output: Left: 200
  print(failure); // Output: Right: Not Found
}