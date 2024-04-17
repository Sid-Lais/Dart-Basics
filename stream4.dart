import 'dart:async';
import 'dart:math';

void main() {
  // Create a stream controller for generating random numbers
  StreamController<int> controller = StreamController<int>();

  // Generate a stream of random numbers every second
  Timer timer = Timer.periodic(Duration(seconds: 1), (_) {
    controller.add(Random().nextInt(100)); // Add a random number to the stream
  });

  // Initialize subscription variable
  StreamSubscription<int>? subscription;

  // Subscribe to the stream
  subscription = controller.stream.listen((int data) {
    print('Received: $data'); // Print the received random number

    // Cancel the subscription after 10 seconds
    if (DateTime.now().second >= 10) {
      print('Subscription canceled.');
      subscription!.cancel(); // Cancel the subscription
      controller.close(); // Close the stream controller
      timer.cancel(); // Cancel the timer
    }
  }, onError: (dynamic error) {
    print('Error: $error');
  }, onDone: () {
    print('Stream closed.');
  });

  // Wait for the subscription to be canceled before exiting
  subscription.onDone(() {
    print('Program ended.');
  });
}
