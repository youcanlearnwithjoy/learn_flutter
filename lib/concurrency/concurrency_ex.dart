void main(){
  print("1 - Sync");
  Future(() => print("2 Event Queue"),);
  Future.microtask(()=> print("3 Microtask Queue"));
  print("4 - Sync");


  print("FEtching data...");
  fetchUser().
  then((data) => print("Data received: $data"))
  .catchError((error) => print("Error: $error"))
  .whenComplete(() {
    print("Always runs - like finally block");
  },);

  print("This runs immediately - doesn't wait");

}

Future<String> fetchUser(){
  return Future.delayed(Duration(seconds: 2), () => "User Data");
}

/**
 * OUT PUT
 * 1- SYNC
 * 4- SYNC
 * 3- Microtask Queue
 * 2- Event Queue
 */

/**
 * Dart Execution Model:
 * 
 * Main Isolate
 *     Call Stack (executes sync code)
 * Microtask Queue (executes microtasks after current sync code) (Future.value, etc )
 * Event Queue (executes events after microtasks) (Future.delayed, timers, I/O events, user interactions)
 * 
 *  Synchronous Code: Executes immediately in the order it appears.
 * Event Queue: Contains tasks that are scheduled to run after the current synchronous code finishes. This includes timers, I/O events, and user interactions.
 * Microtask Queue: Contains tasks that are scheduled to run after the current synchronous code but before any tasks in the event queue. This is often used for tasks that need to run immediately after the current code, such
 * as completing a Future or handling a stream event. 
 * 
 */

/**
 * FUTURE represents a **value that will be available at some point in the future.** It is either:
 * 
 * Future States:
 * Pending: The Future is still waiting for the asynchronous operation to complete. (running)
 * Completed with a value: The Future has completed successfully and has a value available.
 * Completed with an error: The Future has completed with an error, and the error information is available.
 * 
 */

/**
 * Async and Await:
 * aync and await  make asynchronous code look and behave like synchronous code - much cleaner than chaining . then():
 * 
 * 
 */