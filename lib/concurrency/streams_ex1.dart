/**
 * Streams:
 * A stream is a sequence of asynchronous events. It allows you to listen to a series of events and react to them as they occur. Streams are commonly used for handling data that arrives over time, such as user input, file I/O, or network requests.
 * A Stream is like a 'Future' but instead of one value, it delivers multiple values over time.
 */

//Basic Stream
Stream<int> countStream() async* {
  for(int i=1; i<=5; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (int value in countStream()) {
    print("Received: $value");
  }
}